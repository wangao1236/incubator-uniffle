#!/bin/bash

#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e
set -o pipefail
set -u

if [ "$(uname)" == "Linux" ]; then exit
fi

for filename in config/crd/bases/*.yaml; do
  printf "" > "$filename.tmp"
  is_first_line=1
  last_line=""
  IFS=''
  # Process the file line by line
  while read -r line
  do
    if [ "$line" == "" ]; then
      if [ "$last_line" == "#" ]; then
        printf '\n' >> "$filename.tmp"
      else
        printf '\\n' >> "$filename.tmp"
      fi
    elif [[ "$line" =~ ^\ [A-Z|a-z|0-9] ]]; then
      printf '\\n%s'"$line" >> "$filename.tmp"
    elif [ "$is_first_line" == 1 ]; then
      printf '%s'"$line" >> "$filename.tmp"
      is_first_line=0
    else
      printf '\n' >> "$filename.tmp"
      printf '%s'"$line" >> "$filename.tmp"
    fi
    last_line="$line"
  done < "$filename"
  # Put a blank line at the end
  printf '\n' >> "$filename.tmp"
  mv "$filename.tmp" "$filename"
done
