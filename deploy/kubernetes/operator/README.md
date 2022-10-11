<!--
  ~ Licensed to the Apache Software Foundation (ASF) under one or more
  ~ contributor license agreements.  See the NOTICE file distributed with
  ~ this work for additional information regarding copyright ownership.
  ~ The ASF licenses this file to You under the Apache License, Version 2.0
  ~ (the "License"); you may not use this file except in compliance with
  ~ the License.  You may obtain a copy of the License at
  ~
  ~    http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  -->

# Uniffle Operator

[![License](https://img.shields.io/badge/LICENSE-Apache2.0-ff69b4.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

The __[Uniffle Operator](https://github.com/apache/incubator-uniffle/tree/master/deploy/kubernetes/operator/)__ manages
Apache Uniffle Cluster within Kubernetes.

The operator is currently in beta (`v1alpha1`), and while we do not anticipate changing the API in
backwards-incompatible ways there is no such guarantee yet.

## Documentation

Please visit the following pages for documentation on using and developing the Uniffle Operator:

- [Installation](docs/install.md): step-by-step instructions on how to get uniffle operator running on our cluster
- [Design & Usage](docs/design): overview design of operator and detail usage of CRD

### Examples

Example uses of each CRD have been [provided](examples).

## Contributions

We :heart: contributions.

Have you had a good experience with the **Uniffle Operator**? Why not share some love and contribute code, or just let
us know about any issues you had with it?

We welcome issue reports [here](https://github.com/apache/incubator-uniffle/issues); be sure to choose the proper issue
template for your issue, so that we can be sure you're providing the necessary information.

Before submitting a PR, please be sure to run `make build` before committing. Otherwise, the GitHub checks are likely to
fail.

