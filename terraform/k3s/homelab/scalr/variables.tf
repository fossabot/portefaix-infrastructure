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
#
# SPDX-License-Identifier: Apache-2.0

#############################################################################
# Provider

variable "cloudflare_account_id" {
  description = "The Cloudflare account ID"
  type        = string
}

# variable "region" {
#   type        = string
#   description = "The region that will be used as default value for all resources."
# }

# variable "zone" {
#   type        = string
#   description = "The zone that will be used as default value for all resources"
# }

#############################################################################
# Scalr

variable "account_id" {
  type        = string
  description = "ID of the Scalr account"
}

variable "environment_id" {
  type        = string
  description = "ID of the Scalr environment"
}

variable "vcs_provider_id" {
  type        = string
  description = "ID of the VCS provider used"
}

variable "tags" {
  type        = list(string)
  description = "List of tags"
}

variable "workspaces" {
  type = map(object({
    directory = string
    branch    = string,
    # tags           = list(string)
    # gitops         = bool
    # auto_apply     = bool,
    # execution_mode = string,
    # trigger        = list(string)
  }))
  description = "Terraform cloud workspaces"
}

variable "gh_repo" {
  type        = string
  description = "Repository name in your VCS provider"
}

variable "cloudflare_api_token" {
  description = "The Cloudflare account ID"
  type        = string
}
