# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# [START aiplatform_v1_generated_MetadataService_GetMetadataStore_sync]
require "google/cloud/ai_platform/v1"

##
# Snippet for the get_metadata_store call in the MetadataService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::AIPlatform::V1::MetadataService::Client#get_metadata_store. It
# may require modification in order to execute successfully.
#
def get_metadata_store
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AIPlatform::V1::MetadataService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AIPlatform::V1::GetMetadataStoreRequest.new

  # Call the get_metadata_store method.
  result = client.get_metadata_store request

  # The returned object is of type Google::Cloud::AIPlatform::V1::MetadataStore.
  p result
end
# [END aiplatform_v1_generated_MetadataService_GetMetadataStore_sync]
