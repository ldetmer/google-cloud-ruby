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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/retail/v2/completion_service_pb"
require "google/cloud/retail/v2/completion_service_services_pb"
require "google/cloud/retail/v2/completion_service"

class ::Google::Cloud::Retail::V2::CompletionService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_complete_query
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::CompleteQueryResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    catalog = "hello world"
    query = "hello world"
    visitor_id = "hello world"
    language_codes = ["hello world"]
    device_type = "hello world"
    dataset = "hello world"
    max_suggestions = 42
    entity = "hello world"

    complete_query_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :complete_query, name
      assert_kind_of ::Google::Cloud::Retail::V2::CompleteQueryRequest, request
      assert_equal "hello world", request["catalog"]
      assert_equal "hello world", request["query"]
      assert_equal "hello world", request["visitor_id"]
      assert_equal ["hello world"], request["language_codes"]
      assert_equal "hello world", request["device_type"]
      assert_equal "hello world", request["dataset"]
      assert_equal 42, request["max_suggestions"]
      assert_equal "hello world", request["entity"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, complete_query_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::CompletionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.complete_query({ catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, entity: entity }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.complete_query catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, entity: entity do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.complete_query ::Google::Cloud::Retail::V2::CompleteQueryRequest.new(catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, entity: entity) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.complete_query({ catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, entity: entity }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.complete_query(::Google::Cloud::Retail::V2::CompleteQueryRequest.new(catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, entity: entity), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, complete_query_client_stub.call_rpc_count
    end
  end

  def test_import_completion_data
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    input_config = {}
    notification_pubsub_topic = "hello world"

    import_completion_data_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_completion_data, name
      assert_kind_of ::Google::Cloud::Retail::V2::ImportCompletionDataRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::CompletionDataInputConfig), request["input_config"]
      assert_equal "hello world", request["notification_pubsub_topic"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_completion_data_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::CompletionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_completion_data({ parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_completion_data parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_completion_data ::Google::Cloud::Retail::V2::ImportCompletionDataRequest.new(parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_completion_data({ parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_completion_data(::Google::Cloud::Retail::V2::ImportCompletionDataRequest.new(parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_completion_data_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Retail::V2::CompletionService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::CompletionService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Retail::V2::CompletionService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Retail::V2::CompletionService::Operations, client.operations_client
  end
end
