# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START automl_v1beta1_generated_AutoML_GetTableSpec_sync]
require "google/cloud/automl/v1beta1"

##
# Snippet for the get_table_spec call in the AutoML service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::AutoML::V1beta1::AutoML::Client#get_table_spec. It may require
# modification in order to execute successfully.
#
def get_table_spec
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AutoML::V1beta1::AutoML::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AutoML::V1beta1::GetTableSpecRequest.new

  # Call the get_table_spec method.
  result = client.get_table_spec request

  # The returned object is of type Google::Cloud::AutoML::V1beta1::TableSpec.
  p result
end
# [END automl_v1beta1_generated_AutoML_GetTableSpec_sync]
