# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/model.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/common_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/retail/v2/model.proto", :syntax => :proto3) do
    add_message "google.cloud.retail.v2.Model" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :training_state, :enum, 3, "google.cloud.retail.v2.Model.TrainingState"
      optional :serving_state, :enum, 4, "google.cloud.retail.v2.Model.ServingState"
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      optional :type, :string, 7
      optional :optimization_objective, :string, 8
      optional :periodic_tuning_state, :enum, 11, "google.cloud.retail.v2.Model.PeriodicTuningState"
      optional :last_tune_time, :message, 12, "google.protobuf.Timestamp"
      optional :tuning_operation, :string, 15
      optional :data_state, :enum, 16, "google.cloud.retail.v2.Model.DataState"
      optional :filtering_option, :enum, 18, "google.cloud.retail.v2.RecommendationsFilteringOption"
      repeated :serving_config_lists, :message, 19, "google.cloud.retail.v2.Model.ServingConfigList"
    end
    add_message "google.cloud.retail.v2.Model.ServingConfigList" do
      repeated :serving_config_ids, :string, 1
    end
    add_enum "google.cloud.retail.v2.Model.ServingState" do
      value :SERVING_STATE_UNSPECIFIED, 0
      value :INACTIVE, 1
      value :ACTIVE, 2
      value :TUNED, 3
    end
    add_enum "google.cloud.retail.v2.Model.TrainingState" do
      value :TRAINING_STATE_UNSPECIFIED, 0
      value :PAUSED, 1
      value :TRAINING, 2
    end
    add_enum "google.cloud.retail.v2.Model.PeriodicTuningState" do
      value :PERIODIC_TUNING_STATE_UNSPECIFIED, 0
      value :PERIODIC_TUNING_DISABLED, 1
      value :ALL_TUNING_DISABLED, 3
      value :PERIODIC_TUNING_ENABLED, 2
    end
    add_enum "google.cloud.retail.v2.Model.DataState" do
      value :DATA_STATE_UNSPECIFIED, 0
      value :DATA_OK, 1
      value :DATA_ERROR, 2
    end
  end
end

module Google
  module Cloud
    module Retail
      module V2
        Model = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Model").msgclass
        Model::ServingConfigList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Model.ServingConfigList").msgclass
        Model::ServingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Model.ServingState").enummodule
        Model::TrainingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Model.TrainingState").enummodule
        Model::PeriodicTuningState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Model.PeriodicTuningState").enummodule
        Model::DataState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Model.DataState").enummodule
      end
    end
  end
end
