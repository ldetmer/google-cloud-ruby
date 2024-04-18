# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/discoveryengine/v1beta/engine_service.proto for package 'Google.Cloud.DiscoveryEngine.V1beta'
# Original file comments:
# Copyright 2022 Google LLC
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

require 'grpc'
require 'google/cloud/discoveryengine/v1beta/engine_service_pb'

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        module EngineService
          # Service for managing [Engine][google.cloud.discoveryengine.v1beta.Engine]
          # configuration.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.discoveryengine.v1beta.EngineService'

            # Creates a [Engine][google.cloud.discoveryengine.v1beta.Engine].
            rpc :CreateEngine, ::Google::Cloud::DiscoveryEngine::V1beta::CreateEngineRequest, ::Google::Longrunning::Operation
            # Deletes a [Engine][google.cloud.discoveryengine.v1beta.Engine].
            rpc :DeleteEngine, ::Google::Cloud::DiscoveryEngine::V1beta::DeleteEngineRequest, ::Google::Longrunning::Operation
            # Updates an [Engine][google.cloud.discoveryengine.v1beta.Engine]
            rpc :UpdateEngine, ::Google::Cloud::DiscoveryEngine::V1beta::UpdateEngineRequest, ::Google::Cloud::DiscoveryEngine::V1beta::Engine
            # Gets a [Engine][google.cloud.discoveryengine.v1beta.Engine].
            rpc :GetEngine, ::Google::Cloud::DiscoveryEngine::V1beta::GetEngineRequest, ::Google::Cloud::DiscoveryEngine::V1beta::Engine
            # Lists all the [Engine][google.cloud.discoveryengine.v1beta.Engine]s
            # associated with the project.
            rpc :ListEngines, ::Google::Cloud::DiscoveryEngine::V1beta::ListEnginesRequest, ::Google::Cloud::DiscoveryEngine::V1beta::ListEnginesResponse
            # Pauses the training of an existing engine. Only applicable if
            # [SolutionType][google.cloud.discoveryengine.v1beta.SolutionType] is
            # [SOLUTION_TYPE_RECOMMENDATION][google.cloud.discoveryengine.v1beta.SolutionType.SOLUTION_TYPE_RECOMMENDATION].
            rpc :PauseEngine, ::Google::Cloud::DiscoveryEngine::V1beta::PauseEngineRequest, ::Google::Cloud::DiscoveryEngine::V1beta::Engine
            # Resumes the training of an existing engine. Only applicable if
            # [SolutionType][google.cloud.discoveryengine.v1beta.SolutionType] is
            # [SOLUTION_TYPE_RECOMMENDATION][google.cloud.discoveryengine.v1beta.SolutionType.SOLUTION_TYPE_RECOMMENDATION].
            rpc :ResumeEngine, ::Google::Cloud::DiscoveryEngine::V1beta::ResumeEngineRequest, ::Google::Cloud::DiscoveryEngine::V1beta::Engine
            # Tunes an existing engine. Only applicable if
            # [SolutionType][google.cloud.discoveryengine.v1beta.SolutionType] is
            # [SOLUTION_TYPE_RECOMMENDATION][google.cloud.discoveryengine.v1beta.SolutionType.SOLUTION_TYPE_RECOMMENDATION].
            rpc :TuneEngine, ::Google::Cloud::DiscoveryEngine::V1beta::TuneEngineRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
