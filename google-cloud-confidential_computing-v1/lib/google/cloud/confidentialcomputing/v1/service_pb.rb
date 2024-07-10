# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/confidentialcomputing/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n3google/cloud/confidentialcomputing/v1/service.proto\x12%google.cloud.confidentialcomputing.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xa5\x02\n\tChallenge\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x11\n\x04used\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03\x12\x16\n\ttpm_nonce\x18\x06 \x01(\tB\x03\xe0\x41\x03:n\xea\x41k\n.confidentialcomputing.googleapis.com/Challenge\x12\x39projects/{project}/locations/{location}/challenges/{uuid}\"\x9d\x01\n\x16\x43reateChallengeRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12H\n\tchallenge\x18\x02 \x01(\x0b\x32\x30.google.cloud.confidentialcomputing.v1.ChallengeB\x03\xe0\x41\x02\"\x88\x05\n\x18VerifyAttestationRequest\x12Q\n\x07td_ccel\x18\x06 \x01(\x0b\x32\x39.google.cloud.confidentialcomputing.v1.TdxCcelAttestationB\x03\xe0\x41\x01H\x00\x12\\\n\x13sev_snp_attestation\x18\x07 \x01(\x0b\x32\x38.google.cloud.confidentialcomputing.v1.SevSnpAttestationB\x03\xe0\x41\x01H\x00\x12I\n\tchallenge\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.confidentialcomputing.googleapis.com/Challenge\x12S\n\x0fgcp_credentials\x18\x02 \x01(\x0b\x32\x35.google.cloud.confidentialcomputing.v1.GcpCredentialsB\x03\xe0\x41\x01\x12S\n\x0ftpm_attestation\x18\x03 \x01(\x0b\x32\x35.google.cloud.confidentialcomputing.v1.TpmAttestationB\x03\xe0\x41\x02\x12\x62\n\x17\x63onfidential_space_info\x18\x04 \x01(\x0b\x32<.google.cloud.confidentialcomputing.v1.ConfidentialSpaceInfoB\x03\xe0\x41\x01\x12O\n\rtoken_options\x18\x05 \x01(\x0b\x32\x33.google.cloud.confidentialcomputing.v1.TokenOptionsB\x03\xe0\x41\x01\x42\x11\n\x0ftee_attestation\"\x83\x01\n\x12TdxCcelAttestation\x12\x1c\n\x0f\x63\x63\x65l_acpi_table\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x01\x12\x16\n\tccel_data\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x01\x12 \n\x13\x63\x61nonical_event_log\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01\x12\x15\n\x08td_quote\x18\x04 \x01(\x0c\x42\x03\xe0\x41\x01\"?\n\x11SevSnpAttestation\x12\x13\n\x06report\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x01\x12\x15\n\x08\x61ux_blob\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x01\"l\n\x19VerifyAttestationResponse\x12\x1e\n\x11oidc_claims_token\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12/\n\x0epartial_errors\x18\x03 \x03(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\"3\n\x0eGcpCredentials\x12!\n\x19service_account_id_tokens\x18\x02 \x03(\t\"\x84\x01\n\x0cTokenOptions\x12\x15\n\x08\x61udience\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05nonce\x18\x02 \x03(\tB\x03\xe0\x41\x01\x12I\n\ntoken_type\x18\x03 \x01(\x0e\x32\x30.google.cloud.confidentialcomputing.v1.TokenTypeB\x03\xe0\x41\x01\"\x8f\x03\n\x0eTpmAttestation\x12K\n\x06quotes\x18\x01 \x03(\x0b\x32;.google.cloud.confidentialcomputing.v1.TpmAttestation.Quote\x12\x15\n\rtcg_event_log\x18\x02 \x01(\x0c\x12\x1b\n\x13\x63\x61nonical_event_log\x18\x03 \x01(\x0c\x12\x0f\n\x07\x61k_cert\x18\x04 \x01(\x0c\x12\x12\n\ncert_chain\x18\x05 \x03(\x0c\x1a\xd6\x01\n\x05Quote\x12\x11\n\thash_algo\x18\x01 \x01(\x05\x12^\n\npcr_values\x18\x02 \x03(\x0b\x32J.google.cloud.confidentialcomputing.v1.TpmAttestation.Quote.PcrValuesEntry\x12\x11\n\traw_quote\x18\x03 \x01(\x0c\x12\x15\n\rraw_signature\x18\x04 \x01(\x0c\x1a\x30\n\x0ePcrValuesEntry\x12\x0b\n\x03key\x18\x01 \x01(\x05\x12\r\n\x05value\x18\x02 \x01(\x0c:\x02\x38\x01\"j\n\x15\x43onfidentialSpaceInfo\x12Q\n\x0fsigned_entities\x18\x01 \x03(\x0b\x32\x33.google.cloud.confidentialcomputing.v1.SignedEntityB\x03\xe0\x41\x01\"w\n\x0cSignedEntity\x12g\n\x1a\x63ontainer_image_signatures\x18\x01 \x03(\x0b\x32>.google.cloud.confidentialcomputing.v1.ContainerImageSignatureB\x03\xe0\x41\x01\"\xaf\x01\n\x17\x43ontainerImageSignature\x12\x14\n\x07payload\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x01\x12\x16\n\tsignature\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x01\x12\x17\n\npublic_key\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01\x12M\n\x07sig_alg\x18\x04 \x01(\x0e\x32\x37.google.cloud.confidentialcomputing.v1.SigningAlgorithmB\x03\xe0\x41\x01*\x7f\n\x10SigningAlgorithm\x12!\n\x1dSIGNING_ALGORITHM_UNSPECIFIED\x10\x00\x12\x15\n\x11RSASSA_PSS_SHA256\x10\x01\x12\x1a\n\x16RSASSA_PKCS1V15_SHA256\x10\x02\x12\x15\n\x11\x45\x43\x44SA_P256_SHA256\x10\x03*l\n\tTokenType\x12\x1a\n\x16TOKEN_TYPE_UNSPECIFIED\x10\x00\x12\x13\n\x0fTOKEN_TYPE_OIDC\x10\x01\x12\x12\n\x0eTOKEN_TYPE_PKI\x10\x02\x12\x1a\n\x16TOKEN_TYPE_LIMITED_AWS\x10\x03\x32\xb7\x04\n\x15\x43onfidentialComputing\x12\xd8\x01\n\x0f\x43reateChallenge\x12=.google.cloud.confidentialcomputing.v1.CreateChallengeRequest\x1a\x30.google.cloud.confidentialcomputing.v1.Challenge\"T\xda\x41\x10parent,challenge\x82\xd3\xe4\x93\x02;\"./v1/{parent=projects/*/locations/*}/challenges:\tchallenge\x12\xe8\x01\n\x11VerifyAttestation\x12?.google.cloud.confidentialcomputing.v1.VerifyAttestationRequest\x1a@.google.cloud.confidentialcomputing.v1.VerifyAttestationResponse\"P\x82\xd3\xe4\x93\x02J\"E/v1/{challenge=projects/*/locations/*/challenges/*}:verifyAttestation:\x01*\x1aX\xca\x41$confidentialcomputing.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x97\x02\n)com.google.cloud.confidentialcomputing.v1B\x0cServiceProtoP\x01Z_cloud.google.com/go/confidentialcomputing/apiv1/confidentialcomputingpb;confidentialcomputingpb\xaa\x02%Google.Cloud.ConfidentialComputing.V1\xca\x02%Google\\Cloud\\ConfidentialComputing\\V1\xea\x02(Google::Cloud::ConfidentialComputing::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
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
    module ConfidentialComputing
      module V1
        Challenge = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.Challenge").msgclass
        CreateChallengeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.CreateChallengeRequest").msgclass
        VerifyAttestationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.VerifyAttestationRequest").msgclass
        TdxCcelAttestation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.TdxCcelAttestation").msgclass
        SevSnpAttestation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.SevSnpAttestation").msgclass
        VerifyAttestationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.VerifyAttestationResponse").msgclass
        GcpCredentials = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.GcpCredentials").msgclass
        TokenOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.TokenOptions").msgclass
        TpmAttestation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.TpmAttestation").msgclass
        TpmAttestation::Quote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.TpmAttestation.Quote").msgclass
        ConfidentialSpaceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.ConfidentialSpaceInfo").msgclass
        SignedEntity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.SignedEntity").msgclass
        ContainerImageSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.ContainerImageSignature").msgclass
        SigningAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.SigningAlgorithm").enummodule
        TokenType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.confidentialcomputing.v1.TokenType").enummodule
      end
    end
  end
end
