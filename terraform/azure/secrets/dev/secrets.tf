# Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module "secrets" {
  source = "../modules/secrets"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location

  aks_resource_group_name = var.aks_resource_group_name
  cluster_name = var.cluster_name

  portefaix_version_secret = var.portefaix_version

  tags = var.tags
}
