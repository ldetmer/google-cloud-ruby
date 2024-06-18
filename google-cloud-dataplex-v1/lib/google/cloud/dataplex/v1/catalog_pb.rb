# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/catalog.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataplex/v1/service_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&google/cloud/dataplex/v1/catalog.proto\x12\x18google.cloud.dataplex.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/dataplex/v1/service.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd3\r\n\nAspectType\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x03\xfa\x41$\n\"dataplex.googleapis.com/AspectType\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x45\n\x06labels\x18\x07 \x03(\x0b\x32\x30.google.cloud.dataplex.v1.AspectType.LabelsEntryB\x03\xe0\x41\x01\x12\x0c\n\x04\x65tag\x18\x08 \x01(\t\x12N\n\rauthorization\x18\x34 \x01(\x0b\x32\x32.google.cloud.dataplex.v1.AspectType.AuthorizationB\x03\xe0\x41\x05\x12U\n\x11metadata_template\x18\x35 \x01(\x0b\x32\x35.google.cloud.dataplex.v1.AspectType.MetadataTemplateB\x03\xe0\x41\x02\x12G\n\x0ftransfer_status\x18\xca\x01 \x01(\x0e\x32(.google.cloud.dataplex.v1.TransferStatusB\x03\xe0\x41\x03\x1a\x36\n\rAuthorization\x12%\n\x18\x61lternate_use_permission\x18\x01 \x01(\tB\x03\xe0\x41\x05\x1a\xa4\x07\n\x10MetadataTemplate\x12\x12\n\x05index\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x11\n\x04name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\x04type\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12Q\n\rrecord_fields\x18\x06 \x03(\x0b\x32\x35.google.cloud.dataplex.v1.AspectType.MetadataTemplateB\x03\xe0\x41\x01\x12Y\n\x0b\x65num_values\x18\x08 \x03(\x0b\x32?.google.cloud.dataplex.v1.AspectType.MetadataTemplate.EnumValueB\x03\xe0\x41\x01\x12M\n\tmap_items\x18\n \x01(\x0b\x32\x35.google.cloud.dataplex.v1.AspectType.MetadataTemplateB\x03\xe0\x41\x01\x12O\n\x0b\x61rray_items\x18\x0b \x01(\x0b\x32\x35.google.cloud.dataplex.v1.AspectType.MetadataTemplateB\x03\xe0\x41\x01\x12\x14\n\x07type_id\x18\x0c \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08type_ref\x18\r \x01(\tB\x03\xe0\x41\x01\x12[\n\x0b\x63onstraints\x18\x32 \x01(\x0b\x32\x41.google.cloud.dataplex.v1.AspectType.MetadataTemplate.ConstraintsB\x03\xe0\x41\x01\x12[\n\x0b\x61nnotations\x18\x33 \x01(\x0b\x32\x41.google.cloud.dataplex.v1.AspectType.MetadataTemplate.AnnotationsB\x03\xe0\x41\x01\x1aK\n\tEnumValue\x12\x12\n\x05index\x18\x01 \x01(\x05\x42\x03\xe0\x41\x02\x12\x11\n\x04name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\ndeprecated\x18\x03 \x01(\tB\x03\xe0\x41\x01\x1a$\n\x0b\x43onstraints\x12\x15\n\x08required\x18\x01 \x01(\x08\x42\x03\xe0\x41\x01\x1a\xad\x01\n\x0b\x41nnotations\x12\x17\n\ndeprecated\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rdisplay_order\x18\x04 \x01(\x05\x42\x03\xe0\x41\x01\x12\x18\n\x0bstring_type\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rstring_values\x18\x07 \x03(\tB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x84\x01\xea\x41\x80\x01\n\"dataplex.googleapis.com/AspectType\x12\x41projects/{project}/locations/{location}/aspectTypes/{aspect_type}*\x0b\x61spectTypes2\naspectType\"\xcd\x04\n\nEntryGroup\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x03\xfa\x41$\n\"dataplex.googleapis.com/EntryGroup\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x45\n\x06labels\x18\x07 \x03(\x0b\x32\x30.google.cloud.dataplex.v1.EntryGroup.LabelsEntryB\x03\xe0\x41\x01\x12\x0c\n\x04\x65tag\x18\x08 \x01(\t\x12G\n\x0ftransfer_status\x18\xca\x01 \x01(\x0e\x32(.google.cloud.dataplex.v1.TransferStatusB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x84\x01\xea\x41\x80\x01\n\"dataplex.googleapis.com/EntryGroup\x12\x41projects/{project}/locations/{location}/entryGroups/{entry_group}*\x0b\x65ntryGroups2\nentryGroup\"\xdc\x06\n\tEntryType\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x03\xfa\x41#\n!dataplex.googleapis.com/EntryType\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x44\n\x06labels\x18\x07 \x03(\x0b\x32/.google.cloud.dataplex.v1.EntryType.LabelsEntryB\x03\xe0\x41\x01\x12\x11\n\x04\x65tag\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0ctype_aliases\x18\t \x03(\tB\x03\xe0\x41\x01\x12\x15\n\x08platform\x18\n \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06system\x18\x0b \x01(\tB\x03\xe0\x41\x01\x12H\n\x10required_aspects\x18\x32 \x03(\x0b\x32..google.cloud.dataplex.v1.EntryType.AspectInfo\x12M\n\rauthorization\x18\x33 \x01(\x0b\x32\x31.google.cloud.dataplex.v1.EntryType.AuthorizationB\x03\xe0\x41\x05\x1a\x43\n\nAspectInfo\x12\x35\n\x04type\x18\x01 \x01(\tB\'\xfa\x41$\n\"dataplex.googleapis.com/AspectType\x1a\x36\n\rAuthorization\x12%\n\x18\x61lternate_use_permission\x18\x01 \x01(\tB\x03\xe0\x41\x05\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:~\xea\x41{\n!dataplex.googleapis.com/EntryType\x12?projects/{project}/locations/{location}/entryTypes/{entry_type}*\nentryTypes2\tentryType\"\x91\x02\n\x06\x41spect\x12\x18\n\x0b\x61spect_type\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04path\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12*\n\x04\x64\x61ta\x18\x08 \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x02\x12\x42\n\raspect_source\x18\t \x01(\x0b\x32&.google.cloud.dataplex.v1.AspectSourceB\x03\xe0\x41\x01\"p\n\x0c\x41spectSource\x12/\n\x0b\x63reate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xc4\x04\n\x05\x45ntry\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x1a\n\nentry_type\x18\x04 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x42\n\x07\x61spects\x18\t \x03(\x0b\x32,.google.cloud.dataplex.v1.Entry.AspectsEntryB\x03\xe0\x41\x01\x12\x1c\n\x0cparent_entry\x18\n \x01(\tB\x06\xe0\x41\x01\xe0\x41\x05\x12!\n\x14\x66ully_qualified_name\x18\x0c \x01(\tB\x03\xe0\x41\x01\x12@\n\x0c\x65ntry_source\x18\x0f \x01(\x0b\x32%.google.cloud.dataplex.v1.EntrySourceB\x03\xe0\x41\x01\x1aP\n\x0c\x41spectsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12/\n\x05value\x18\x02 \x01(\x0b\x32 .google.cloud.dataplex.v1.Aspect:\x02\x38\x01:\x86\x01\xea\x41\x82\x01\n\x1d\x64\x61taplex.googleapis.com/Entry\x12Qprojects/{project}/locations/{location}/entryGroups/{entry_group}/entries/{entry}*\x07\x65ntries2\x05\x65ntry\"\xba\x03\n\x0b\x45ntrySource\x12\x10\n\x08resource\x18\x01 \x01(\t\x12\x0e\n\x06system\x18\x02 \x01(\t\x12\x10\n\x08platform\x18\x03 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x05 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x06 \x01(\t\x12\x41\n\x06labels\x18\x07 \x03(\x0b\x32\x31.google.cloud.dataplex.v1.EntrySource.LabelsEntry\x12\x46\n\tancestors\x18\t \x03(\x0b\x32..google.cloud.dataplex.v1.EntrySource.AncestorB\x03\xe0\x41\x05\x12/\n\x0b\x63reate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1a\x30\n\x08\x41ncestor\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04type\x18\x02 \x01(\tB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xcd\x01\n\x17\x43reateEntryGroupRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x1b\n\x0e\x65ntry_group_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12>\n\x0b\x65ntry_group\x18\x03 \x01(\x0b\x32$.google.cloud.dataplex.v1.EntryGroupB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\xab\x01\n\x17UpdateEntryGroupRequest\x12>\n\x0b\x65ntry_group\x18\x01 \x01(\x0b\x32$.google.cloud.dataplex.v1.EntryGroupB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"f\n\x17\x44\x65leteEntryGroupRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"dataplex.googleapis.com/EntryGroup\x12\x11\n\x04\x65tag\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xb0\x01\n\x16ListEntryGroupsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x8d\x01\n\x17ListEntryGroupsResponse\x12:\n\x0c\x65ntry_groups\x18\x01 \x03(\x0b\x32$.google.cloud.dataplex.v1.EntryGroup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"P\n\x14GetEntryGroupRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"dataplex.googleapis.com/EntryGroup\"\xc9\x01\n\x16\x43reateEntryTypeRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x1a\n\rentry_type_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12<\n\nentry_type\x18\x03 \x01(\x0b\x32#.google.cloud.dataplex.v1.EntryTypeB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\xa8\x01\n\x16UpdateEntryTypeRequest\x12<\n\nentry_type\x18\x01 \x01(\x0b\x32#.google.cloud.dataplex.v1.EntryTypeB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"d\n\x16\x44\x65leteEntryTypeRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dataplex.googleapis.com/EntryType\x12\x11\n\x04\x65tag\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xaf\x01\n\x15ListEntryTypesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x8a\x01\n\x16ListEntryTypesResponse\x12\x38\n\x0b\x65ntry_types\x18\x01 \x03(\x0b\x32#.google.cloud.dataplex.v1.EntryType\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"N\n\x13GetEntryTypeRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dataplex.googleapis.com/EntryType\"\xcd\x01\n\x17\x43reateAspectTypeRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x1b\n\x0e\x61spect_type_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12>\n\x0b\x61spect_type\x18\x03 \x01(\x0b\x32$.google.cloud.dataplex.v1.AspectTypeB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\xab\x01\n\x17UpdateAspectTypeRequest\x12>\n\x0b\x61spect_type\x18\x01 \x01(\x0b\x32$.google.cloud.dataplex.v1.AspectTypeB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"f\n\x17\x44\x65leteAspectTypeRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"dataplex.googleapis.com/AspectType\x12\x11\n\x04\x65tag\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xb0\x01\n\x16ListAspectTypesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x8d\x01\n\x17ListAspectTypesResponse\x12:\n\x0c\x61spect_types\x18\x01 \x03(\x0b\x32$.google.cloud.dataplex.v1.AspectType\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"P\n\x14GetAspectTypeRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"dataplex.googleapis.com/AspectType\"\x9c\x01\n\x12\x43reateEntryRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"dataplex.googleapis.com/EntryGroup\x12\x15\n\x08\x65ntry_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x33\n\x05\x65ntry\x18\x03 \x01(\x0b\x32\x1f.google.cloud.dataplex.v1.EntryB\x03\xe0\x41\x02\"\xda\x01\n\x12UpdateEntryRequest\x12\x33\n\x05\x65ntry\x18\x01 \x01(\x0b\x32\x1f.google.cloud.dataplex.v1.EntryB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x1a\n\rallow_missing\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x12#\n\x16\x64\x65lete_missing_aspects\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x18\n\x0b\x61spect_keys\x18\x05 \x03(\tB\x03\xe0\x41\x01\"I\n\x12\x44\x65leteEntryRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x64\x61taplex.googleapis.com/Entry\"\x96\x01\n\x12ListEntriesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"dataplex.googleapis.com/EntryGroup\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\"`\n\x13ListEntriesResponse\x12\x30\n\x07\x65ntries\x18\x01 \x03(\x0b\x32\x1f.google.cloud.dataplex.v1.Entry\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xad\x01\n\x0fGetEntryRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x64\x61taplex.googleapis.com/Entry\x12\x36\n\x04view\x18\x02 \x01(\x0e\x32#.google.cloud.dataplex.v1.EntryViewB\x03\xe0\x41\x01\x12\x19\n\x0c\x61spect_types\x18\x03 \x03(\tB\x03\xe0\x41\x01\x12\x12\n\x05paths\x18\x04 \x03(\tB\x03\xe0\x41\x01\"\xc4\x01\n\x12LookupEntryRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x36\n\x04view\x18\x02 \x01(\x0e\x32#.google.cloud.dataplex.v1.EntryViewB\x03\xe0\x41\x01\x12\x19\n\x0c\x61spect_types\x18\x03 \x03(\tB\x03\xe0\x41\x01\x12\x12\n\x05paths\x18\x04 \x03(\tB\x03\xe0\x41\x01\x12\x34\n\x05\x65ntry\x18\x05 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x64\x61taplex.googleapis.com/Entry\"\x99\x01\n\x14SearchEntriesRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\x05query\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tpage_size\x18\x03 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05scope\x18\x07 \x01(\tB\x03\xe0\x41\x01\"\x86\x02\n\x13SearchEntriesResult\x12\x1b\n\x0flinked_resource\x18\x08 \x01(\tB\x02\x18\x01\x12\x37\n\x0e\x64\x61taplex_entry\x18\t \x01(\x0b\x32\x1f.google.cloud.dataplex.v1.Entry\x12L\n\x08snippets\x18\x0c \x01(\x0b\x32\x36.google.cloud.dataplex.v1.SearchEntriesResult.SnippetsB\x02\x18\x01\x1aK\n\x08Snippets\x12;\n\x0e\x64\x61taplex_entry\x18\x01 \x01(\x0b\x32\x1f.google.cloud.dataplex.v1.EntryB\x02\x18\x01:\x02\x18\x01\"\x99\x01\n\x15SearchEntriesResponse\x12>\n\x07results\x18\x01 \x03(\x0b\x32-.google.cloud.dataplex.v1.SearchEntriesResult\x12\x12\n\ntotal_size\x18\x02 \x01(\x05\x12\x17\n\x0fnext_page_token\x18\x03 \x01(\t\x12\x13\n\x0bunreachable\x18\x04 \x03(\t*Q\n\tEntryView\x12\x1a\n\x16\x45NTRY_VIEW_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41SIC\x10\x01\x12\x08\n\x04\x46ULL\x10\x02\x12\n\n\x06\x43USTOM\x10\x03\x12\x07\n\x03\x41LL\x10\x04*p\n\x0eTransferStatus\x12\x1f\n\x1bTRANSFER_STATUS_UNSPECIFIED\x10\x00\x12\x1c\n\x18TRANSFER_STATUS_MIGRATED\x10\x01\x12\x1f\n\x1bTRANSFER_STATUS_TRANSFERRED\x10\x02\x32\x82#\n\x0e\x43\x61talogService\x12\xea\x01\n\x0f\x43reateEntryType\x12\x30.google.cloud.dataplex.v1.CreateEntryTypeRequest\x1a\x1d.google.longrunning.Operation\"\x85\x01\xca\x41\x1e\n\tEntryType\x12\x11OperationMetadata\xda\x41\x1fparent,entry_type,entry_type_id\x82\xd3\xe4\x93\x02<\"./v1/{parent=projects/*/locations/*}/entryTypes:\nentry_type\x12\xec\x01\n\x0fUpdateEntryType\x12\x30.google.cloud.dataplex.v1.UpdateEntryTypeRequest\x1a\x1d.google.longrunning.Operation\"\x87\x01\xca\x41\x1e\n\tEntryType\x12\x11OperationMetadata\xda\x41\x16\x65ntry_type,update_mask\x82\xd3\xe4\x93\x02G29/v1/{entry_type.name=projects/*/locations/*/entryTypes/*}:\nentry_type\x12\xce\x01\n\x0f\x44\x65leteEntryType\x12\x30.google.cloud.dataplex.v1.DeleteEntryTypeRequest\x1a\x1d.google.longrunning.Operation\"j\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30*./v1/{name=projects/*/locations/*/entryTypes/*}\x12\xb4\x01\n\x0eListEntryTypes\x12/.google.cloud.dataplex.v1.ListEntryTypesRequest\x1a\x30.google.cloud.dataplex.v1.ListEntryTypesResponse\"?\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x30\x12./v1/{parent=projects/*/locations/*}/entryTypes\x12\xa1\x01\n\x0cGetEntryType\x12-.google.cloud.dataplex.v1.GetEntryTypeRequest\x1a#.google.cloud.dataplex.v1.EntryType\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\x12./v1/{name=projects/*/locations/*/entryTypes/*}\x12\xf1\x01\n\x10\x43reateAspectType\x12\x31.google.cloud.dataplex.v1.CreateAspectTypeRequest\x1a\x1d.google.longrunning.Operation\"\x8a\x01\xca\x41\x1f\n\nAspectType\x12\x11OperationMetadata\xda\x41!parent,aspect_type,aspect_type_id\x82\xd3\xe4\x93\x02>\"//v1/{parent=projects/*/locations/*}/aspectTypes:\x0b\x61spect_type\x12\xf3\x01\n\x10UpdateAspectType\x12\x31.google.cloud.dataplex.v1.UpdateAspectTypeRequest\x1a\x1d.google.longrunning.Operation\"\x8c\x01\xca\x41\x1f\n\nAspectType\x12\x11OperationMetadata\xda\x41\x17\x61spect_type,update_mask\x82\xd3\xe4\x93\x02J2;/v1/{aspect_type.name=projects/*/locations/*/aspectTypes/*}:\x0b\x61spect_type\x12\xd1\x01\n\x10\x44\x65leteAspectType\x12\x31.google.cloud.dataplex.v1.DeleteAspectTypeRequest\x1a\x1d.google.longrunning.Operation\"k\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31*//v1/{name=projects/*/locations/*/aspectTypes/*}\x12\xb8\x01\n\x0fListAspectTypes\x12\x30.google.cloud.dataplex.v1.ListAspectTypesRequest\x1a\x31.google.cloud.dataplex.v1.ListAspectTypesResponse\"@\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x31\x12//v1/{parent=projects/*/locations/*}/aspectTypes\x12\xa5\x01\n\rGetAspectType\x12..google.cloud.dataplex.v1.GetAspectTypeRequest\x1a$.google.cloud.dataplex.v1.AspectType\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/aspectTypes/*}\x12\xf1\x01\n\x10\x43reateEntryGroup\x12\x31.google.cloud.dataplex.v1.CreateEntryGroupRequest\x1a\x1d.google.longrunning.Operation\"\x8a\x01\xca\x41\x1f\n\nEntryGroup\x12\x11OperationMetadata\xda\x41!parent,entry_group,entry_group_id\x82\xd3\xe4\x93\x02>\"//v1/{parent=projects/*/locations/*}/entryGroups:\x0b\x65ntry_group\x12\xf3\x01\n\x10UpdateEntryGroup\x12\x31.google.cloud.dataplex.v1.UpdateEntryGroupRequest\x1a\x1d.google.longrunning.Operation\"\x8c\x01\xca\x41\x1f\n\nEntryGroup\x12\x11OperationMetadata\xda\x41\x17\x65ntry_group,update_mask\x82\xd3\xe4\x93\x02J2;/v1/{entry_group.name=projects/*/locations/*/entryGroups/*}:\x0b\x65ntry_group\x12\xd1\x01\n\x10\x44\x65leteEntryGroup\x12\x31.google.cloud.dataplex.v1.DeleteEntryGroupRequest\x1a\x1d.google.longrunning.Operation\"k\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31*//v1/{name=projects/*/locations/*/entryGroups/*}\x12\xb8\x01\n\x0fListEntryGroups\x12\x30.google.cloud.dataplex.v1.ListEntryGroupsRequest\x1a\x31.google.cloud.dataplex.v1.ListEntryGroupsResponse\"@\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x31\x12//v1/{parent=projects/*/locations/*}/entryGroups\x12\xa5\x01\n\rGetEntryGroup\x12..google.cloud.dataplex.v1.GetEntryGroupRequest\x1a$.google.cloud.dataplex.v1.EntryGroup\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/entryGroups/*}\x12\xbe\x01\n\x0b\x43reateEntry\x12,.google.cloud.dataplex.v1.CreateEntryRequest\x1a\x1f.google.cloud.dataplex.v1.Entry\"`\xda\x41\x15parent,entry,entry_id\x82\xd3\xe4\x93\x02\x42\"9/v1/{parent=projects/*/locations/*/entryGroups/*}/entries:\x05\x65ntry\x12\xc1\x01\n\x0bUpdateEntry\x12,.google.cloud.dataplex.v1.UpdateEntryRequest\x1a\x1f.google.cloud.dataplex.v1.Entry\"c\xda\x41\x11\x65ntry,update_mask\x82\xd3\xe4\x93\x02I2@/v1/{entry.name=projects/*/locations/*/entryGroups/*/entries/**}:\x05\x65ntry\x12\xa7\x01\n\x0b\x44\x65leteEntry\x12,.google.cloud.dataplex.v1.DeleteEntryRequest\x1a\x1f.google.cloud.dataplex.v1.Entry\"I\xda\x41\x04name\x82\xd3\xe4\x93\x02<*:/v1/{name=projects/*/locations/*/entryGroups/*/entries/**}\x12\xb6\x01\n\x0bListEntries\x12,.google.cloud.dataplex.v1.ListEntriesRequest\x1a-.google.cloud.dataplex.v1.ListEntriesResponse\"J\xda\x41\x06parent\x82\xd3\xe4\x93\x02;\x12\x39/v1/{parent=projects/*/locations/*/entryGroups/*}/entries\x12\xa1\x01\n\x08GetEntry\x12).google.cloud.dataplex.v1.GetEntryRequest\x1a\x1f.google.cloud.dataplex.v1.Entry\"I\xda\x41\x04name\x82\xd3\xe4\x93\x02<\x12:/v1/{name=projects/*/locations/*/entryGroups/*/entries/**}\x12\x93\x01\n\x0bLookupEntry\x12,.google.cloud.dataplex.v1.LookupEntryRequest\x1a\x1f.google.cloud.dataplex.v1.Entry\"5\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*}:lookupEntry\x12\xb6\x01\n\rSearchEntries\x12..google.cloud.dataplex.v1.SearchEntriesRequest\x1a/.google.cloud.dataplex.v1.SearchEntriesResponse\"D\xda\x41\nname,query\x82\xd3\xe4\x93\x02\x31\"//v1/{name=projects/*/locations/*}:searchEntries\x1aK\xca\x41\x17\x64\x61taplex.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xbc\x01\n\x1c\x63om.google.cloud.dataplex.v1B\x0c\x43\x61talogProtoP\x01Z8cloud.google.com/go/dataplex/apiv1/dataplexpb;dataplexpb\xaa\x02\x18Google.Cloud.Dataplex.V1\xca\x02\x18Google\\Cloud\\Dataplex\\V1\xea\x02\x1bGoogle::Cloud::Dataplex::V1b\x06proto3"

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
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module Dataplex
      module V1
        AspectType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.AspectType").msgclass
        AspectType::Authorization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.AspectType.Authorization").msgclass
        AspectType::MetadataTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.AspectType.MetadataTemplate").msgclass
        AspectType::MetadataTemplate::EnumValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.AspectType.MetadataTemplate.EnumValue").msgclass
        AspectType::MetadataTemplate::Constraints = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.AspectType.MetadataTemplate.Constraints").msgclass
        AspectType::MetadataTemplate::Annotations = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.AspectType.MetadataTemplate.Annotations").msgclass
        EntryGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.EntryGroup").msgclass
        EntryType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.EntryType").msgclass
        EntryType::AspectInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.EntryType.AspectInfo").msgclass
        EntryType::Authorization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.EntryType.Authorization").msgclass
        Aspect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Aspect").msgclass
        AspectSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.AspectSource").msgclass
        Entry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.Entry").msgclass
        EntrySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.EntrySource").msgclass
        EntrySource::Ancestor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.EntrySource.Ancestor").msgclass
        CreateEntryGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateEntryGroupRequest").msgclass
        UpdateEntryGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateEntryGroupRequest").msgclass
        DeleteEntryGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteEntryGroupRequest").msgclass
        ListEntryGroupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListEntryGroupsRequest").msgclass
        ListEntryGroupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListEntryGroupsResponse").msgclass
        GetEntryGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetEntryGroupRequest").msgclass
        CreateEntryTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateEntryTypeRequest").msgclass
        UpdateEntryTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateEntryTypeRequest").msgclass
        DeleteEntryTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteEntryTypeRequest").msgclass
        ListEntryTypesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListEntryTypesRequest").msgclass
        ListEntryTypesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListEntryTypesResponse").msgclass
        GetEntryTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetEntryTypeRequest").msgclass
        CreateAspectTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateAspectTypeRequest").msgclass
        UpdateAspectTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateAspectTypeRequest").msgclass
        DeleteAspectTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteAspectTypeRequest").msgclass
        ListAspectTypesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListAspectTypesRequest").msgclass
        ListAspectTypesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListAspectTypesResponse").msgclass
        GetAspectTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetAspectTypeRequest").msgclass
        CreateEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateEntryRequest").msgclass
        UpdateEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateEntryRequest").msgclass
        DeleteEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteEntryRequest").msgclass
        ListEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListEntriesRequest").msgclass
        ListEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListEntriesResponse").msgclass
        GetEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetEntryRequest").msgclass
        LookupEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.LookupEntryRequest").msgclass
        SearchEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SearchEntriesRequest").msgclass
        SearchEntriesResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SearchEntriesResult").msgclass
        SearchEntriesResult::Snippets = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SearchEntriesResult.Snippets").msgclass
        SearchEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SearchEntriesResponse").msgclass
        EntryView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.EntryView").enummodule
        TransferStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.TransferStatus").enummodule
      end
    end
  end
end
