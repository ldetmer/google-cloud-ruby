# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/model_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/model_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/retail/v2/model_service.proto", :syntax => :proto3) do
    add_message "google.cloud.retail.v2.CreateModelRequest" do
      optional :parent, :string, 1
      optional :model, :message, 2, "google.cloud.retail.v2.Model"
      optional :dry_run, :bool, 3
    end
    add_message "google.cloud.retail.v2.UpdateModelRequest" do
      optional :model, :message, 1, "google.cloud.retail.v2.Model"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.retail.v2.GetModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.retail.v2.PauseModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.retail.v2.ResumeModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.retail.v2.ListModelsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.retail.v2.DeleteModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.retail.v2.ListModelsResponse" do
      repeated :models, :message, 1, "google.cloud.retail.v2.Model"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.retail.v2.TuneModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.retail.v2.CreateModelMetadata" do
      optional :model, :string, 1
    end
    add_message "google.cloud.retail.v2.TuneModelMetadata" do
      optional :model, :string, 1
    end
    add_message "google.cloud.retail.v2.TuneModelResponse" do
    end
  end
end

module Google
  module Cloud
    module Retail
      module V2
        CreateModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CreateModelRequest").msgclass
        UpdateModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.UpdateModelRequest").msgclass
        GetModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.GetModelRequest").msgclass
        PauseModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PauseModelRequest").msgclass
        ResumeModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ResumeModelRequest").msgclass
        ListModelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ListModelsRequest").msgclass
        DeleteModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.DeleteModelRequest").msgclass
        ListModelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ListModelsResponse").msgclass
        TuneModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.TuneModelRequest").msgclass
        CreateModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CreateModelMetadata").msgclass
        TuneModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.TuneModelMetadata").msgclass
        TuneModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.TuneModelResponse").msgclass
      end
    end
  end
end
