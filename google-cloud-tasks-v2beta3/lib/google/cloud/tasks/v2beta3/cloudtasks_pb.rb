# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/tasks/v2beta3/cloudtasks.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/tasks/v2beta3/queue_pb'
require 'google/cloud/tasks/v2beta3/task_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n+google/cloud/tasks/v2beta3/cloudtasks.proto\x12\x1agoogle.cloud.tasks.v2beta3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/tasks/v2beta3/queue.proto\x1a%google/cloud/tasks/v2beta3/task.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xb7\x01\n\x11ListQueuesRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1f\x63loudtasks.googleapis.com/Queue\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\x12\x32\n\tread_mask\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\"`\n\x12ListQueuesResponse\x12\x31\n\x06queues\x18\x01 \x03(\x0b\x32!.google.cloud.tasks.v2beta3.Queue\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"|\n\x0fGetQueueRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudtasks.googleapis.com/Queue\x12\x32\n\tread_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\"\x84\x01\n\x12\x43reateQueueRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1f\x63loudtasks.googleapis.com/Queue\x12\x35\n\x05queue\x18\x02 \x01(\x0b\x32!.google.cloud.tasks.v2beta3.QueueB\x03\xe0\x41\x02\"|\n\x12UpdateQueueRequest\x12\x35\n\x05queue\x18\x01 \x01(\x0b\x32!.google.cloud.tasks.v2beta3.QueueB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"K\n\x12\x44\x65leteQueueRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudtasks.googleapis.com/Queue\"J\n\x11PurgeQueueRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudtasks.googleapis.com/Queue\"J\n\x11PauseQueueRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudtasks.googleapis.com/Queue\"K\n\x12ResumeQueueRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudtasks.googleapis.com/Queue\"\xaf\x01\n\x10ListTasksRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x63loudtasks.googleapis.com/Task\x12<\n\rresponse_view\x18\x02 \x01(\x0e\x32%.google.cloud.tasks.v2beta3.Task.View\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"]\n\x11ListTasksResponse\x12/\n\x05tasks\x18\x01 \x03(\x0b\x32 .google.cloud.tasks.v2beta3.Task\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x84\x01\n\x0eGetTaskRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x63loudtasks.googleapis.com/Task\x12<\n\rresponse_view\x18\x02 \x01(\x0e\x32%.google.cloud.tasks.v2beta3.Task.View\"\xbe\x01\n\x11\x43reateTaskRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x63loudtasks.googleapis.com/Task\x12\x33\n\x04task\x18\x02 \x01(\x0b\x32 .google.cloud.tasks.v2beta3.TaskB\x03\xe0\x41\x02\x12<\n\rresponse_view\x18\x03 \x01(\x0e\x32%.google.cloud.tasks.v2beta3.Task.View\"I\n\x11\x44\x65leteTaskRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x63loudtasks.googleapis.com/Task\"\x84\x01\n\x0eRunTaskRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x63loudtasks.googleapis.com/Task\x12<\n\rresponse_view\x18\x02 \x01(\x0e\x32%.google.cloud.tasks.v2beta3.Task.View2\xa5\x16\n\nCloudTasks\x12\xad\x01\n\nListQueues\x12-.google.cloud.tasks.v2beta3.ListQueuesRequest\x1a..google.cloud.tasks.v2beta3.ListQueuesResponse\"@\x82\xd3\xe4\x93\x02\x31\x12//v2beta3/{parent=projects/*/locations/*}/queues\xda\x41\x06parent\x12\x9a\x01\n\x08GetQueue\x12+.google.cloud.tasks.v2beta3.GetQueueRequest\x1a!.google.cloud.tasks.v2beta3.Queue\">\x82\xd3\xe4\x93\x02\x31\x12//v2beta3/{name=projects/*/locations/*/queues/*}\xda\x41\x04name\x12\xaf\x01\n\x0b\x43reateQueue\x12..google.cloud.tasks.v2beta3.CreateQueueRequest\x1a!.google.cloud.tasks.v2beta3.Queue\"M\x82\xd3\xe4\x93\x02\x38\"//v2beta3/{parent=projects/*/locations/*}/queues:\x05queue\xda\x41\x0cparent,queue\x12\xba\x01\n\x0bUpdateQueue\x12..google.cloud.tasks.v2beta3.UpdateQueueRequest\x1a!.google.cloud.tasks.v2beta3.Queue\"X\x82\xd3\xe4\x93\x02>25/v2beta3/{queue.name=projects/*/locations/*/queues/*}:\x05queue\xda\x41\x11queue,update_mask\x12\x95\x01\n\x0b\x44\x65leteQueue\x12..google.cloud.tasks.v2beta3.DeleteQueueRequest\x1a\x16.google.protobuf.Empty\">\x82\xd3\xe4\x93\x02\x31*//v2beta3/{name=projects/*/locations/*/queues/*}\xda\x41\x04name\x12\xa7\x01\n\nPurgeQueue\x12-.google.cloud.tasks.v2beta3.PurgeQueueRequest\x1a!.google.cloud.tasks.v2beta3.Queue\"G\x82\xd3\xe4\x93\x02:\"5/v2beta3/{name=projects/*/locations/*/queues/*}:purge:\x01*\xda\x41\x04name\x12\xa7\x01\n\nPauseQueue\x12-.google.cloud.tasks.v2beta3.PauseQueueRequest\x1a!.google.cloud.tasks.v2beta3.Queue\"G\x82\xd3\xe4\x93\x02:\"5/v2beta3/{name=projects/*/locations/*/queues/*}:pause:\x01*\xda\x41\x04name\x12\xaa\x01\n\x0bResumeQueue\x12..google.cloud.tasks.v2beta3.ResumeQueueRequest\x1a!.google.cloud.tasks.v2beta3.Queue\"H\x82\xd3\xe4\x93\x02;\"6/v2beta3/{name=projects/*/locations/*/queues/*}:resume:\x01*\xda\x41\x04name\x12\xa1\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"V\x82\xd3\xe4\x93\x02\x45\"@/v2beta3/{resource=projects/*/locations/*/queues/*}:getIamPolicy:\x01*\xda\x41\x08resource\x12\xa8\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"]\x82\xd3\xe4\x93\x02\x45\"@/v2beta3/{resource=projects/*/locations/*/queues/*}:setIamPolicy:\x01*\xda\x41\x0fresource,policy\x12\xd3\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"h\x82\xd3\xe4\x93\x02K\"F/v2beta3/{resource=projects/*/locations/*/queues/*}:testIamPermissions:\x01*\xda\x41\x14resource,permissions\x12\xb2\x01\n\tListTasks\x12,.google.cloud.tasks.v2beta3.ListTasksRequest\x1a-.google.cloud.tasks.v2beta3.ListTasksResponse\"H\x82\xd3\xe4\x93\x02\x39\x12\x37/v2beta3/{parent=projects/*/locations/*/queues/*}/tasks\xda\x41\x06parent\x12\x9f\x01\n\x07GetTask\x12*.google.cloud.tasks.v2beta3.GetTaskRequest\x1a .google.cloud.tasks.v2beta3.Task\"F\x82\xd3\xe4\x93\x02\x39\x12\x37/v2beta3/{name=projects/*/locations/*/queues/*/tasks/*}\xda\x41\x04name\x12\xaf\x01\n\nCreateTask\x12-.google.cloud.tasks.v2beta3.CreateTaskRequest\x1a .google.cloud.tasks.v2beta3.Task\"P\x82\xd3\xe4\x93\x02<\"7/v2beta3/{parent=projects/*/locations/*/queues/*}/tasks:\x01*\xda\x41\x0bparent,task\x12\x9b\x01\n\nDeleteTask\x12-.google.cloud.tasks.v2beta3.DeleteTaskRequest\x1a\x16.google.protobuf.Empty\"F\x82\xd3\xe4\x93\x02\x39*7/v2beta3/{name=projects/*/locations/*/queues/*/tasks/*}\xda\x41\x04name\x12\xa6\x01\n\x07RunTask\x12*.google.cloud.tasks.v2beta3.RunTaskRequest\x1a .google.cloud.tasks.v2beta3.Task\"M\x82\xd3\xe4\x93\x02@\";/v2beta3/{name=projects/*/locations/*/queues/*/tasks/*}:run:\x01*\xda\x41\x04name\x1aM\xca\x41\x19\x63loudtasks.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x80\x01\n\x1e\x63om.google.cloud.tasks.v2beta3B\x0f\x43loudTasksProtoP\x01ZCcloud.google.com/go/cloudtasks/apiv2beta3/cloudtaskspb;cloudtaskspb\xa2\x02\x05TASKSb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.tasks.v2beta3.Queue", "google/cloud/tasks/v2beta3/queue.proto"],
    ["google.cloud.tasks.v2beta3.Task", "google/cloud/tasks/v2beta3/task.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Tasks
      module V2beta3
        ListQueuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.ListQueuesRequest").msgclass
        ListQueuesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.ListQueuesResponse").msgclass
        GetQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.GetQueueRequest").msgclass
        CreateQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.CreateQueueRequest").msgclass
        UpdateQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.UpdateQueueRequest").msgclass
        DeleteQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.DeleteQueueRequest").msgclass
        PurgeQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.PurgeQueueRequest").msgclass
        PauseQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.PauseQueueRequest").msgclass
        ResumeQueueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.ResumeQueueRequest").msgclass
        ListTasksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.ListTasksRequest").msgclass
        ListTasksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.ListTasksResponse").msgclass
        GetTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.GetTaskRequest").msgclass
        CreateTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.CreateTaskRequest").msgclass
        DeleteTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.DeleteTaskRequest").msgclass
        RunTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta3.RunTaskRequest").msgclass
      end
    end
  end
end
