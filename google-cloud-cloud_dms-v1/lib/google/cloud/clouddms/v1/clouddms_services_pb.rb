# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/clouddms/v1/clouddms.proto for package 'Google.Cloud.CloudDMS.V1'
# Original file comments:
# Copyright 2021 Google LLC
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
require 'google/cloud/clouddms/v1/clouddms_pb'

module Google
  module Cloud
    module CloudDMS
      module V1
        module DataMigrationService
          # Database Migration service
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.clouddms.v1.DataMigrationService'

            # Lists migration jobs in a given project and location.
            rpc :ListMigrationJobs, ::Google::Cloud::CloudDMS::V1::ListMigrationJobsRequest, ::Google::Cloud::CloudDMS::V1::ListMigrationJobsResponse
            # Gets details of a single migration job.
            rpc :GetMigrationJob, ::Google::Cloud::CloudDMS::V1::GetMigrationJobRequest, ::Google::Cloud::CloudDMS::V1::MigrationJob
            # Creates a new migration job in a given project and location.
            rpc :CreateMigrationJob, ::Google::Cloud::CloudDMS::V1::CreateMigrationJobRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single migration job.
            rpc :UpdateMigrationJob, ::Google::Cloud::CloudDMS::V1::UpdateMigrationJobRequest, ::Google::Longrunning::Operation
            # Deletes a single migration job.
            rpc :DeleteMigrationJob, ::Google::Cloud::CloudDMS::V1::DeleteMigrationJobRequest, ::Google::Longrunning::Operation
            # Start an already created migration job.
            rpc :StartMigrationJob, ::Google::Cloud::CloudDMS::V1::StartMigrationJobRequest, ::Google::Longrunning::Operation
            # Stops a running migration job.
            rpc :StopMigrationJob, ::Google::Cloud::CloudDMS::V1::StopMigrationJobRequest, ::Google::Longrunning::Operation
            # Resume a migration job that is currently stopped and is resumable (was
            # stopped during CDC phase).
            rpc :ResumeMigrationJob, ::Google::Cloud::CloudDMS::V1::ResumeMigrationJobRequest, ::Google::Longrunning::Operation
            # Promote a migration job, stopping replication to the destination and
            # promoting the destination to be a standalone database.
            rpc :PromoteMigrationJob, ::Google::Cloud::CloudDMS::V1::PromoteMigrationJobRequest, ::Google::Longrunning::Operation
            # Verify a migration job, making sure the destination can reach the source
            # and that all configuration and prerequisites are met.
            rpc :VerifyMigrationJob, ::Google::Cloud::CloudDMS::V1::VerifyMigrationJobRequest, ::Google::Longrunning::Operation
            # Restart a stopped or failed migration job, resetting the destination
            # instance to its original state and starting the migration process from
            # scratch.
            rpc :RestartMigrationJob, ::Google::Cloud::CloudDMS::V1::RestartMigrationJobRequest, ::Google::Longrunning::Operation
            # Generate a SSH configuration script to configure the reverse SSH
            # connectivity.
            rpc :GenerateSshScript, ::Google::Cloud::CloudDMS::V1::GenerateSshScriptRequest, ::Google::Cloud::CloudDMS::V1::SshScript
            # Generate a TCP Proxy configuration script to configure a cloud-hosted VM
            # running a TCP Proxy.
            rpc :GenerateTcpProxyScript, ::Google::Cloud::CloudDMS::V1::GenerateTcpProxyScriptRequest, ::Google::Cloud::CloudDMS::V1::TcpProxyScript
            # Retrieves a list of all connection profiles in a given project and
            # location.
            rpc :ListConnectionProfiles, ::Google::Cloud::CloudDMS::V1::ListConnectionProfilesRequest, ::Google::Cloud::CloudDMS::V1::ListConnectionProfilesResponse
            # Gets details of a single connection profile.
            rpc :GetConnectionProfile, ::Google::Cloud::CloudDMS::V1::GetConnectionProfileRequest, ::Google::Cloud::CloudDMS::V1::ConnectionProfile
            # Creates a new connection profile in a given project and location.
            rpc :CreateConnectionProfile, ::Google::Cloud::CloudDMS::V1::CreateConnectionProfileRequest, ::Google::Longrunning::Operation
            # Update the configuration of a single connection profile.
            rpc :UpdateConnectionProfile, ::Google::Cloud::CloudDMS::V1::UpdateConnectionProfileRequest, ::Google::Longrunning::Operation
            # Deletes a single Database Migration Service connection profile.
            # A connection profile can only be deleted if it is not in use by any
            # active migration jobs.
            rpc :DeleteConnectionProfile, ::Google::Cloud::CloudDMS::V1::DeleteConnectionProfileRequest, ::Google::Longrunning::Operation
            # Creates a new private connection in a given project and location.
            rpc :CreatePrivateConnection, ::Google::Cloud::CloudDMS::V1::CreatePrivateConnectionRequest, ::Google::Longrunning::Operation
            # Gets details of a single private connection.
            rpc :GetPrivateConnection, ::Google::Cloud::CloudDMS::V1::GetPrivateConnectionRequest, ::Google::Cloud::CloudDMS::V1::PrivateConnection
            # Retrieves a list of private connections in a given project and location.
            rpc :ListPrivateConnections, ::Google::Cloud::CloudDMS::V1::ListPrivateConnectionsRequest, ::Google::Cloud::CloudDMS::V1::ListPrivateConnectionsResponse
            # Deletes a single Database Migration Service private connection.
            rpc :DeletePrivateConnection, ::Google::Cloud::CloudDMS::V1::DeletePrivateConnectionRequest, ::Google::Longrunning::Operation
            # Gets details of a single conversion workspace.
            rpc :GetConversionWorkspace, ::Google::Cloud::CloudDMS::V1::GetConversionWorkspaceRequest, ::Google::Cloud::CloudDMS::V1::ConversionWorkspace
            # Lists conversion workspaces in a given project and location.
            rpc :ListConversionWorkspaces, ::Google::Cloud::CloudDMS::V1::ListConversionWorkspacesRequest, ::Google::Cloud::CloudDMS::V1::ListConversionWorkspacesResponse
            # Creates a new conversion workspace in a given project and location.
            rpc :CreateConversionWorkspace, ::Google::Cloud::CloudDMS::V1::CreateConversionWorkspaceRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single conversion workspace.
            rpc :UpdateConversionWorkspace, ::Google::Cloud::CloudDMS::V1::UpdateConversionWorkspaceRequest, ::Google::Longrunning::Operation
            # Deletes a single conversion workspace.
            rpc :DeleteConversionWorkspace, ::Google::Cloud::CloudDMS::V1::DeleteConversionWorkspaceRequest, ::Google::Longrunning::Operation
            # Creates a new mapping rule for a given conversion workspace.
            rpc :CreateMappingRule, ::Google::Cloud::CloudDMS::V1::CreateMappingRuleRequest, ::Google::Cloud::CloudDMS::V1::MappingRule
            # Deletes a single mapping rule.
            rpc :DeleteMappingRule, ::Google::Cloud::CloudDMS::V1::DeleteMappingRuleRequest, ::Google::Protobuf::Empty
            # Lists the mapping rules for a specific conversion workspace.
            rpc :ListMappingRules, ::Google::Cloud::CloudDMS::V1::ListMappingRulesRequest, ::Google::Cloud::CloudDMS::V1::ListMappingRulesResponse
            # Gets the details of a mapping rule.
            rpc :GetMappingRule, ::Google::Cloud::CloudDMS::V1::GetMappingRuleRequest, ::Google::Cloud::CloudDMS::V1::MappingRule
            # Imports a snapshot of the source database into the
            # conversion workspace.
            rpc :SeedConversionWorkspace, ::Google::Cloud::CloudDMS::V1::SeedConversionWorkspaceRequest, ::Google::Longrunning::Operation
            # Imports the mapping rules for a given conversion workspace.
            # Supports various formats of external rules files.
            rpc :ImportMappingRules, ::Google::Cloud::CloudDMS::V1::ImportMappingRulesRequest, ::Google::Longrunning::Operation
            # Creates a draft tree schema for the destination database.
            rpc :ConvertConversionWorkspace, ::Google::Cloud::CloudDMS::V1::ConvertConversionWorkspaceRequest, ::Google::Longrunning::Operation
            # Marks all the data in the conversion workspace as committed.
            rpc :CommitConversionWorkspace, ::Google::Cloud::CloudDMS::V1::CommitConversionWorkspaceRequest, ::Google::Longrunning::Operation
            # Rolls back a conversion workspace to the last committed snapshot.
            rpc :RollbackConversionWorkspace, ::Google::Cloud::CloudDMS::V1::RollbackConversionWorkspaceRequest, ::Google::Longrunning::Operation
            # Applies draft tree onto a specific destination database.
            rpc :ApplyConversionWorkspace, ::Google::Cloud::CloudDMS::V1::ApplyConversionWorkspaceRequest, ::Google::Longrunning::Operation
            # Describes the database entities tree for a specific conversion workspace
            # and a specific tree type.
            #
            # Database entities are not resources like conversion workspaces or mapping
            # rules, and they can't be created, updated or deleted. Instead, they are
            # simple data objects describing the structure of the client database.
            rpc :DescribeDatabaseEntities, ::Google::Cloud::CloudDMS::V1::DescribeDatabaseEntitiesRequest, ::Google::Cloud::CloudDMS::V1::DescribeDatabaseEntitiesResponse
            # Searches/lists the background jobs for a specific
            # conversion workspace.
            #
            # The background jobs are not resources like conversion workspaces or
            # mapping rules, and they can't be created, updated or deleted.
            # Instead, they are a way to expose the data plane jobs log.
            rpc :SearchBackgroundJobs, ::Google::Cloud::CloudDMS::V1::SearchBackgroundJobsRequest, ::Google::Cloud::CloudDMS::V1::SearchBackgroundJobsResponse
            # Retrieves a list of committed revisions of a specific conversion
            # workspace.
            rpc :DescribeConversionWorkspaceRevisions, ::Google::Cloud::CloudDMS::V1::DescribeConversionWorkspaceRevisionsRequest, ::Google::Cloud::CloudDMS::V1::DescribeConversionWorkspaceRevisionsResponse
            # Fetches a set of static IP addresses that need to be allowlisted by the
            # customer when using the static-IP connectivity method.
            rpc :FetchStaticIps, ::Google::Cloud::CloudDMS::V1::FetchStaticIpsRequest, ::Google::Cloud::CloudDMS::V1::FetchStaticIpsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
