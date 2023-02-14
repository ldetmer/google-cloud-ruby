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

# [START area120tables_v1alpha1_generated_TablesService_ListTables_sync]
require "google/area120/tables/v1alpha1"

##
# Snippet for the list_tables call in the TablesService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Area120::Tables::V1alpha1::TablesService::Client#list_tables. It may
# require modification in order to execute successfully.
#
def list_tables
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Area120::Tables::V1alpha1::TablesService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Area120::Tables::V1alpha1::ListTablesRequest.new

  # Call the list_tables method.
  result = client.list_tables request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Area120::Tables::V1alpha1::Table.
    p item
  end
end
# [END area120tables_v1alpha1_generated_TablesService_ListTables_sync]
