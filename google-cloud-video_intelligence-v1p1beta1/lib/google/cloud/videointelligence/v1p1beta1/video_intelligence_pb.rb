# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/videointelligence/v1p1beta1/video_intelligence.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\nAgoogle/cloud/videointelligence/v1p1beta1/video_intelligence.proto\x12(google.cloud.videointelligence.v1p1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\x8c\x02\n\x14\x41nnotateVideoRequest\x12\x11\n\tinput_uri\x18\x01 \x01(\t\x12\x15\n\rinput_content\x18\x06 \x01(\x0c\x12H\n\x08\x66\x65\x61tures\x18\x02 \x03(\x0e\x32\x31.google.cloud.videointelligence.v1p1beta1.FeatureB\x03\xe0\x41\x02\x12M\n\rvideo_context\x18\x03 \x01(\x0b\x32\x36.google.cloud.videointelligence.v1p1beta1.VideoContext\x12\x17\n\noutput_uri\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x18\n\x0blocation_id\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x82\x04\n\x0cVideoContext\x12H\n\x08segments\x18\x01 \x03(\x0b\x32\x36.google.cloud.videointelligence.v1p1beta1.VideoSegment\x12^\n\x16label_detection_config\x18\x02 \x01(\x0b\x32>.google.cloud.videointelligence.v1p1beta1.LabelDetectionConfig\x12i\n\x1cshot_change_detection_config\x18\x03 \x01(\x0b\x32\x43.google.cloud.videointelligence.v1p1beta1.ShotChangeDetectionConfig\x12s\n!explicit_content_detection_config\x18\x04 \x01(\x0b\x32H.google.cloud.videointelligence.v1p1beta1.ExplicitContentDetectionConfig\x12h\n\x1bspeech_transcription_config\x18\x06 \x01(\x0b\x32\x43.google.cloud.videointelligence.v1p1beta1.SpeechTranscriptionConfig\"\x9c\x01\n\x14LabelDetectionConfig\x12Z\n\x14label_detection_mode\x18\x01 \x01(\x0e\x32<.google.cloud.videointelligence.v1p1beta1.LabelDetectionMode\x12\x19\n\x11stationary_camera\x18\x02 \x01(\x08\x12\r\n\x05model\x18\x03 \x01(\t\"*\n\x19ShotChangeDetectionConfig\x12\r\n\x05model\x18\x01 \x01(\t\"/\n\x1e\x45xplicitContentDetectionConfig\x12\r\n\x05model\x18\x01 \x01(\t\"x\n\x0cVideoSegment\x12\x34\n\x11start_time_offset\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x32\n\x0f\x65nd_time_offset\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\"k\n\x0cLabelSegment\x12G\n\x07segment\x18\x01 \x01(\x0b\x32\x36.google.cloud.videointelligence.v1p1beta1.VideoSegment\x12\x12\n\nconfidence\x18\x02 \x01(\x02\"P\n\nLabelFrame\x12.\n\x0btime_offset\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x12\n\nconfidence\x18\x02 \x01(\x02\"G\n\x06\x45ntity\x12\x11\n\tentity_id\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x15\n\rlanguage_code\x18\x03 \x01(\t\"\xb0\x02\n\x0fLabelAnnotation\x12@\n\x06\x65ntity\x18\x01 \x01(\x0b\x32\x30.google.cloud.videointelligence.v1p1beta1.Entity\x12K\n\x11\x63\x61tegory_entities\x18\x02 \x03(\x0b\x32\x30.google.cloud.videointelligence.v1p1beta1.Entity\x12H\n\x08segments\x18\x03 \x03(\x0b\x32\x36.google.cloud.videointelligence.v1p1beta1.LabelSegment\x12\x44\n\x06\x66rames\x18\x04 \x03(\x0b\x32\x34.google.cloud.videointelligence.v1p1beta1.LabelFrame\"\x9c\x01\n\x14\x45xplicitContentFrame\x12.\n\x0btime_offset\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12T\n\x16pornography_likelihood\x18\x02 \x01(\x0e\x32\x34.google.cloud.videointelligence.v1p1beta1.Likelihood\"k\n\x19\x45xplicitContentAnnotation\x12N\n\x06\x66rames\x18\x01 \x03(\x0b\x32>.google.cloud.videointelligence.v1p1beta1.ExplicitContentFrame\"\xf5\x04\n\x16VideoAnnotationResults\x12\x11\n\tinput_uri\x18\x01 \x01(\t\x12\\\n\x19segment_label_annotations\x18\x02 \x03(\x0b\x32\x39.google.cloud.videointelligence.v1p1beta1.LabelAnnotation\x12Y\n\x16shot_label_annotations\x18\x03 \x03(\x0b\x32\x39.google.cloud.videointelligence.v1p1beta1.LabelAnnotation\x12Z\n\x17\x66rame_label_annotations\x18\x04 \x03(\x0b\x32\x39.google.cloud.videointelligence.v1p1beta1.LabelAnnotation\x12P\n\x10shot_annotations\x18\x06 \x03(\x0b\x32\x36.google.cloud.videointelligence.v1p1beta1.VideoSegment\x12`\n\x13\x65xplicit_annotation\x18\x07 \x01(\x0b\x32\x43.google.cloud.videointelligence.v1p1beta1.ExplicitContentAnnotation\x12\\\n\x15speech_transcriptions\x18\x0b \x03(\x0b\x32=.google.cloud.videointelligence.v1p1beta1.SpeechTranscription\x12!\n\x05\x65rror\x18\t \x01(\x0b\x32\x12.google.rpc.Status\"u\n\x15\x41nnotateVideoResponse\x12\\\n\x12\x61nnotation_results\x18\x01 \x03(\x0b\x32@.google.cloud.videointelligence.v1p1beta1.VideoAnnotationResults\"\xa7\x01\n\x17VideoAnnotationProgress\x12\x11\n\tinput_uri\x18\x01 \x01(\t\x12\x18\n\x10progress_percent\x18\x02 \x01(\x05\x12.\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"w\n\x15\x41nnotateVideoProgress\x12^\n\x13\x61nnotation_progress\x18\x01 \x03(\x0b\x32\x41.google.cloud.videointelligence.v1p1beta1.VideoAnnotationProgress\"\x92\x02\n\x19SpeechTranscriptionConfig\x12\x1a\n\rlanguage_code\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1d\n\x10max_alternatives\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x1d\n\x10\x66ilter_profanity\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x12U\n\x0fspeech_contexts\x18\x04 \x03(\x0b\x32\x37.google.cloud.videointelligence.v1p1beta1.SpeechContextB\x03\xe0\x41\x01\x12)\n\x1c\x65nable_automatic_punctuation\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\x12\x19\n\x0c\x61udio_tracks\x18\x06 \x03(\x05\x42\x03\xe0\x41\x01\"%\n\rSpeechContext\x12\x14\n\x07phrases\x18\x01 \x03(\tB\x03\xe0\x41\x01\"s\n\x13SpeechTranscription\x12\\\n\x0c\x61lternatives\x18\x01 \x03(\x0b\x32\x46.google.cloud.videointelligence.v1p1beta1.SpeechRecognitionAlternative\"\x8e\x01\n\x1cSpeechRecognitionAlternative\x12\x12\n\ntranscript\x18\x01 \x01(\t\x12\x17\n\nconfidence\x18\x02 \x01(\x02\x42\x03\xe0\x41\x03\x12\x41\n\x05words\x18\x03 \x03(\x0b\x32\x32.google.cloud.videointelligence.v1p1beta1.WordInfo\"t\n\x08WordInfo\x12-\n\nstart_time\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12+\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x0c\n\x04word\x18\x03 \x01(\t*\x8c\x01\n\x07\x46\x65\x61ture\x12\x17\n\x13\x46\x45\x41TURE_UNSPECIFIED\x10\x00\x12\x13\n\x0fLABEL_DETECTION\x10\x01\x12\x19\n\x15SHOT_CHANGE_DETECTION\x10\x02\x12\x1e\n\x1a\x45XPLICIT_CONTENT_DETECTION\x10\x03\x12\x18\n\x14SPEECH_TRANSCRIPTION\x10\x06*r\n\x12LabelDetectionMode\x12$\n LABEL_DETECTION_MODE_UNSPECIFIED\x10\x00\x12\r\n\tSHOT_MODE\x10\x01\x12\x0e\n\nFRAME_MODE\x10\x02\x12\x17\n\x13SHOT_AND_FRAME_MODE\x10\x03*t\n\nLikelihood\x12\x1a\n\x16LIKELIHOOD_UNSPECIFIED\x10\x00\x12\x11\n\rVERY_UNLIKELY\x10\x01\x12\x0c\n\x08UNLIKELY\x10\x02\x12\x0c\n\x08POSSIBLE\x10\x03\x12\n\n\x06LIKELY\x10\x04\x12\x0f\n\x0bVERY_LIKELY\x10\x05\x32\xce\x02\n\x18VideoIntelligenceService\x12\xdb\x01\n\rAnnotateVideo\x12>.google.cloud.videointelligence.v1p1beta1.AnnotateVideoRequest\x1a\x1d.google.longrunning.Operation\"k\x82\xd3\xe4\x93\x02\x1f\"\x1a/v1p1beta1/videos:annotate:\x01*\xda\x41\x12input_uri,features\xca\x41.\n\x15\x41nnotateVideoResponse\x12\x15\x41nnotateVideoProgress\x1aT\xca\x41 videointelligence.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xaf\x02\n,com.google.cloud.videointelligence.v1p1beta1B\x1dVideoIntelligenceServiceProtoP\x01ZZcloud.google.com/go/videointelligence/apiv1p1beta1/videointelligencepb;videointelligencepb\xaa\x02(Google.Cloud.VideoIntelligence.V1P1Beta1\xca\x02(Google\\Cloud\\VideoIntelligence\\V1p1beta1\xea\x02+Google::Cloud::VideoIntelligence::V1p1beta1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module VideoIntelligence
      module V1p1beta1
        AnnotateVideoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.AnnotateVideoRequest").msgclass
        VideoContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.VideoContext").msgclass
        LabelDetectionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.LabelDetectionConfig").msgclass
        ShotChangeDetectionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.ShotChangeDetectionConfig").msgclass
        ExplicitContentDetectionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.ExplicitContentDetectionConfig").msgclass
        VideoSegment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.VideoSegment").msgclass
        LabelSegment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.LabelSegment").msgclass
        LabelFrame = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.LabelFrame").msgclass
        Entity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.Entity").msgclass
        LabelAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.LabelAnnotation").msgclass
        ExplicitContentFrame = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.ExplicitContentFrame").msgclass
        ExplicitContentAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.ExplicitContentAnnotation").msgclass
        VideoAnnotationResults = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.VideoAnnotationResults").msgclass
        AnnotateVideoResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.AnnotateVideoResponse").msgclass
        VideoAnnotationProgress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.VideoAnnotationProgress").msgclass
        AnnotateVideoProgress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.AnnotateVideoProgress").msgclass
        SpeechTranscriptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.SpeechTranscriptionConfig").msgclass
        SpeechContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.SpeechContext").msgclass
        SpeechTranscription = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.SpeechTranscription").msgclass
        SpeechRecognitionAlternative = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.SpeechRecognitionAlternative").msgclass
        WordInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.WordInfo").msgclass
        Feature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.Feature").enummodule
        LabelDetectionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.LabelDetectionMode").enummodule
        Likelihood = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.videointelligence.v1p1beta1.Likelihood").enummodule
      end
    end
  end
end
