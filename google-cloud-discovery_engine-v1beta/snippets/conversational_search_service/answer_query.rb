# frozen_string_literal: true

# Copyright 2024 Google LLC
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

# [START discoveryengine_v1beta_generated_ConversationalSearchService_AnswerQuery_sync]
require "google/cloud/discovery_engine/v1beta"

##
# Snippet for the answer_query call in the ConversationalSearchService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Client#answer_query.
#
def answer_query
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::DiscoveryEngine::V1beta::AnswerQueryRequest.new

  # Call the answer_query method.
  result = client.answer_query request

  # The returned object is of type Google::Cloud::DiscoveryEngine::V1beta::AnswerQueryResponse.
  p result
end
# [END discoveryengine_v1beta_generated_ConversationalSearchService_AnswerQuery_sync]
