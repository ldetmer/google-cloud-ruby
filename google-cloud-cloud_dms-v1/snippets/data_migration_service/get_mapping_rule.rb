# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START datamigration_v1_generated_DataMigrationService_GetMappingRule_sync]
require "google/cloud/cloud_dms/v1"

##
# Snippet for the get_mapping_rule call in the DataMigrationService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::CloudDMS::V1::DataMigrationService::Client#get_mapping_rule. It
# may require modification in order to execute successfully.
#
def get_mapping_rule
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::CloudDMS::V1::DataMigrationService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::CloudDMS::V1::GetMappingRuleRequest.new

  # Call the get_mapping_rule method.
  result = client.get_mapping_rule request

  # The returned object is of type Google::Cloud::CloudDMS::V1::MappingRule.
  p result
end
# [END datamigration_v1_generated_DataMigrationService_GetMappingRule_sync]
