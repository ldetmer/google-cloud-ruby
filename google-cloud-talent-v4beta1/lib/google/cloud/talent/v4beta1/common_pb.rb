# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/latlng_pb'
require 'google/type/money_pb'
require 'google/type/postal_address_pb'


descriptor_data = "\n(google/cloud/talent/v4beta1/common.proto\x12\x1bgoogle.cloud.talent.v4beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x18google/type/latlng.proto\x1a\x17google/type/money.proto\x1a google/type/postal_address.proto\"n\n\x0eTimestampRange\x12.\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xb7\x03\n\x08Location\x12I\n\rlocation_type\x18\x01 \x01(\x0e\x32\x32.google.cloud.talent.v4beta1.Location.LocationType\x12\x32\n\x0epostal_address\x18\x02 \x01(\x0b\x32\x1a.google.type.PostalAddress\x12$\n\x07lat_lng\x18\x03 \x01(\x0b\x32\x13.google.type.LatLng\x12\x14\n\x0cradius_miles\x18\x04 \x01(\x01\"\xef\x01\n\x0cLocationType\x12\x1d\n\x19LOCATION_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x43OUNTRY\x10\x01\x12\x17\n\x13\x41\x44MINISTRATIVE_AREA\x10\x02\x12\x1b\n\x17SUB_ADMINISTRATIVE_AREA\x10\x03\x12\x0c\n\x08LOCALITY\x10\x04\x12\x0f\n\x0bPOSTAL_CODE\x10\x05\x12\x10\n\x0cSUB_LOCALITY\x10\x06\x12\x12\n\x0eSUB_LOCALITY_1\x10\x07\x12\x12\n\x0eSUB_LOCALITY_2\x10\x08\x12\x10\n\x0cNEIGHBORHOOD\x10\t\x12\x12\n\x0eSTREET_ADDRESS\x10\n\"\x9f\x01\n\x0fRequestMetadata\x12\x0e\n\x06\x64omain\x18\x01 \x01(\t\x12\x12\n\nsession_id\x18\x02 \x01(\t\x12\x0f\n\x07user_id\x18\x03 \x01(\t\x12\x19\n\x11\x61llow_missing_ids\x18\x04 \x01(\x08\x12<\n\x0b\x64\x65vice_info\x18\x05 \x01(\x0b\x32\'.google.cloud.talent.v4beta1.DeviceInfo\"&\n\x10ResponseMetadata\x12\x12\n\nrequest_id\x18\x01 \x01(\t\"\xcf\x01\n\nDeviceInfo\x12G\n\x0b\x64\x65vice_type\x18\x01 \x01(\x0e\x32\x32.google.cloud.talent.v4beta1.DeviceInfo.DeviceType\x12\n\n\x02id\x18\x02 \x01(\t\"l\n\nDeviceType\x12\x1b\n\x17\x44\x45VICE_TYPE_UNSPECIFIED\x10\x00\x12\x07\n\x03WEB\x10\x01\x12\x0e\n\nMOBILE_WEB\x10\x02\x12\x0b\n\x07\x41NDROID\x10\x03\x12\x07\n\x03IOS\x10\x04\x12\x07\n\x03\x42OT\x10\x05\x12\t\n\x05OTHER\x10\x06\"m\n\x0f\x43ustomAttribute\x12\x15\n\rstring_values\x18\x01 \x03(\t\x12\x13\n\x0blong_values\x18\x02 \x03(\x03\x12\x12\n\nfilterable\x18\x03 \x01(\x08\x12\x1a\n\x12keyword_searchable\x18\x04 \x01(\x08\"W\n\x12SpellingCorrection\x12\x11\n\tcorrected\x18\x01 \x01(\x08\x12\x16\n\x0e\x63orrected_text\x18\x02 \x01(\t\x12\x16\n\x0e\x63orrected_html\x18\x03 \x01(\t\"\xa6\t\n\x10\x43ompensationInfo\x12P\n\x07\x65ntries\x18\x01 \x03(\x0b\x32?.google.cloud.talent.v4beta1.CompensationInfo.CompensationEntry\x12p\n\"annualized_base_compensation_range\x18\x02 \x01(\x0b\x32?.google.cloud.talent.v4beta1.CompensationInfo.CompensationRangeB\x03\xe0\x41\x03\x12q\n#annualized_total_compensation_range\x18\x03 \x01(\x0b\x32?.google.cloud.talent.v4beta1.CompensationInfo.CompensationRangeB\x03\xe0\x41\x03\x1a\x92\x03\n\x11\x43ompensationEntry\x12L\n\x04type\x18\x01 \x01(\x0e\x32>.google.cloud.talent.v4beta1.CompensationInfo.CompensationType\x12L\n\x04unit\x18\x02 \x01(\x0e\x32>.google.cloud.talent.v4beta1.CompensationInfo.CompensationUnit\x12$\n\x06\x61mount\x18\x03 \x01(\x0b\x32\x12.google.type.MoneyH\x00\x12P\n\x05range\x18\x04 \x01(\x0b\x32?.google.cloud.talent.v4beta1.CompensationInfo.CompensationRangeH\x00\x12\x13\n\x0b\x64\x65scription\x18\x05 \x01(\t\x12=\n\x17\x65xpected_units_per_year\x18\x06 \x01(\x0b\x32\x1c.google.protobuf.DoubleValueB\x15\n\x13\x63ompensation_amount\x1ao\n\x11\x43ompensationRange\x12,\n\x10max_compensation\x18\x02 \x01(\x0b\x32\x12.google.type.Money\x12,\n\x10min_compensation\x18\x01 \x01(\x0b\x32\x12.google.type.Money\"\xb5\x01\n\x10\x43ompensationType\x12!\n\x1d\x43OMPENSATION_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04\x42\x41SE\x10\x01\x12\t\n\x05\x42ONUS\x10\x02\x12\x11\n\rSIGNING_BONUS\x10\x03\x12\n\n\x06\x45QUITY\x10\x04\x12\x12\n\x0ePROFIT_SHARING\x10\x05\x12\x0f\n\x0b\x43OMMISSIONS\x10\x06\x12\x08\n\x04TIPS\x10\x07\x12\x1b\n\x17OTHER_COMPENSATION_TYPE\x10\x08\"\x9c\x01\n\x10\x43ompensationUnit\x12!\n\x1d\x43OMPENSATION_UNIT_UNSPECIFIED\x10\x00\x12\n\n\x06HOURLY\x10\x01\x12\t\n\x05\x44\x41ILY\x10\x02\x12\n\n\x06WEEKLY\x10\x03\x12\x0b\n\x07MONTHLY\x10\x04\x12\n\n\x06YEARLY\x10\x05\x12\x0c\n\x08ONE_TIME\x10\x06\x12\x1b\n\x17OTHER_COMPENSATION_UNIT\x10\x07\"\xcc\x03\n\x16\x42\x61tchOperationMetadata\x12H\n\x05state\x18\x01 \x01(\x0e\x32\x39.google.cloud.talent.v4beta1.BatchOperationMetadata.State\x12\x19\n\x11state_description\x18\x02 \x01(\t\x12\x15\n\rsuccess_count\x18\x03 \x01(\x05\x12\x15\n\rfailure_count\x18\x04 \x01(\x05\x12\x13\n\x0btotal_count\x18\x05 \x01(\x05\x12/\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"z\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x10\n\x0cINITIALIZING\x10\x01\x12\x0e\n\nPROCESSING\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\x0e\n\nCANCELLING\x10\x05\x12\r\n\tCANCELLED\x10\x06*y\n\x0b\x43ompanySize\x12\x1c\n\x18\x43OMPANY_SIZE_UNSPECIFIED\x10\x00\x12\x08\n\x04MINI\x10\x01\x12\t\n\x05SMALL\x10\x02\x12\x0b\n\x07SMEDIUM\x10\x03\x12\n\n\x06MEDIUM\x10\x04\x12\x07\n\x03\x42IG\x10\x05\x12\n\n\x06\x42IGGER\x10\x06\x12\t\n\x05GIANT\x10\x07*\xe2\x01\n\nJobBenefit\x12\x1b\n\x17JOB_BENEFIT_UNSPECIFIED\x10\x00\x12\x0e\n\nCHILD_CARE\x10\x01\x12\n\n\x06\x44\x45NTAL\x10\x02\x12\x14\n\x10\x44OMESTIC_PARTNER\x10\x03\x12\x12\n\x0e\x46LEXIBLE_HOURS\x10\x04\x12\x0b\n\x07MEDICAL\x10\x05\x12\x12\n\x0eLIFE_INSURANCE\x10\x06\x12\x12\n\x0ePARENTAL_LEAVE\x10\x07\x12\x13\n\x0fRETIREMENT_PLAN\x10\x08\x12\r\n\tSICK_DAYS\x10\t\x12\x0c\n\x08VACATION\x10\n\x12\n\n\x06VISION\x10\x0b*\x8e\x02\n\nDegreeType\x12\x1b\n\x17\x44\x45GREE_TYPE_UNSPECIFIED\x10\x00\x12\x15\n\x11PRIMARY_EDUCATION\x10\x01\x12\x1d\n\x19LOWER_SECONDARY_EDUCATION\x10\x02\x12\x1d\n\x19UPPER_SECONDARY_EDUCATION\x10\x03\x12\x1c\n\x18\x41\x44ULT_REMEDIAL_EDUCATION\x10\x04\x12\x1c\n\x18\x41SSOCIATES_OR_EQUIVALENT\x10\x05\x12\x1b\n\x17\x42\x41\x43HELORS_OR_EQUIVALENT\x10\x06\x12\x19\n\x15MASTERS_OR_EQUIVALENT\x10\x07\x12\x1a\n\x16\x44OCTORAL_OR_EQUIVALENT\x10\x08*\xdc\x01\n\x0e\x45mploymentType\x12\x1f\n\x1b\x45MPLOYMENT_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tFULL_TIME\x10\x01\x12\r\n\tPART_TIME\x10\x02\x12\x0e\n\nCONTRACTOR\x10\x03\x12\x14\n\x10\x43ONTRACT_TO_HIRE\x10\x04\x12\r\n\tTEMPORARY\x10\x05\x12\n\n\x06INTERN\x10\x06\x12\r\n\tVOLUNTEER\x10\x07\x12\x0c\n\x08PER_DIEM\x10\x08\x12\x12\n\x0e\x46LY_IN_FLY_OUT\x10\t\x12\x19\n\x15OTHER_EMPLOYMENT_TYPE\x10\n*q\n\x08JobLevel\x12\x19\n\x15JOB_LEVEL_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x45NTRY_LEVEL\x10\x01\x12\x0f\n\x0b\x45XPERIENCED\x10\x02\x12\x0b\n\x07MANAGER\x10\x03\x12\x0c\n\x08\x44IRECTOR\x10\x04\x12\r\n\tEXECUTIVE\x10\x05*\xba\x06\n\x0bJobCategory\x12\x1c\n\x18JOB_CATEGORY_UNSPECIFIED\x10\x00\x12\x1a\n\x16\x41\x43\x43OUNTING_AND_FINANCE\x10\x01\x12\x1d\n\x19\x41\x44MINISTRATIVE_AND_OFFICE\x10\x02\x12\x1d\n\x19\x41\x44VERTISING_AND_MARKETING\x10\x03\x12\x0f\n\x0b\x41NIMAL_CARE\x10\x04\x12\x1a\n\x16\x41RT_FASHION_AND_DESIGN\x10\x05\x12\x17\n\x13\x42USINESS_OPERATIONS\x10\x06\x12\x1b\n\x17\x43LEANING_AND_FACILITIES\x10\x07\x12\x13\n\x0f\x43OMPUTER_AND_IT\x10\x08\x12\x10\n\x0c\x43ONSTRUCTION\x10\t\x12\x14\n\x10\x43USTOMER_SERVICE\x10\n\x12\r\n\tEDUCATION\x10\x0b\x12\x1c\n\x18\x45NTERTAINMENT_AND_TRAVEL\x10\x0c\x12\x18\n\x14\x46\x41RMING_AND_OUTDOORS\x10\r\x12\x0e\n\nHEALTHCARE\x10\x0e\x12\x13\n\x0fHUMAN_RESOURCES\x10\x0f\x12\'\n#INSTALLATION_MAINTENANCE_AND_REPAIR\x10\x10\x12\t\n\x05LEGAL\x10\x11\x12\x0e\n\nMANAGEMENT\x10\x12\x12\x1f\n\x1bMANUFACTURING_AND_WAREHOUSE\x10\x13\x12$\n MEDIA_COMMUNICATIONS_AND_WRITING\x10\x14\x12\x16\n\x12OIL_GAS_AND_MINING\x10\x15\x12\x1e\n\x1aPERSONAL_CARE_AND_SERVICES\x10\x16\x12\x17\n\x13PROTECTIVE_SERVICES\x10\x17\x12\x0f\n\x0bREAL_ESTATE\x10\x18\x12\x1e\n\x1aRESTAURANT_AND_HOSPITALITY\x10\x19\x12\x14\n\x10SALES_AND_RETAIL\x10\x1a\x12\x1b\n\x17SCIENCE_AND_ENGINEERING\x10\x1b\x12\"\n\x1eSOCIAL_SERVICES_AND_NON_PROFIT\x10\x1c\x12!\n\x1dSPORTS_FITNESS_AND_RECREATION\x10\x1d\x12 \n\x1cTRANSPORTATION_AND_LOGISTICS\x10\x1e*e\n\rPostingRegion\x12\x1e\n\x1aPOSTING_REGION_UNSPECIFIED\x10\x00\x12\x17\n\x13\x41\x44MINISTRATIVE_AREA\x10\x01\x12\n\n\x06NATION\x10\x02\x12\x0f\n\x0bTELECOMMUTE\x10\x03*n\n\nVisibility\x12\x1a\n\x16VISIBILITY_UNSPECIFIED\x10\x00\x12\x10\n\x0c\x41\x43\x43OUNT_ONLY\x10\x01\x12\x16\n\x12SHARED_WITH_GOOGLE\x10\x02\x12\x16\n\x12SHARED_WITH_PUBLIC\x10\x03\x1a\x02\x18\x01*q\n\x10HtmlSanitization\x12!\n\x1dHTML_SANITIZATION_UNSPECIFIED\x10\x00\x12\x1e\n\x1aHTML_SANITIZATION_DISABLED\x10\x01\x12\x1a\n\x16SIMPLE_FORMATTING_ONLY\x10\x02*c\n\rCommuteMethod\x12\x1e\n\x1a\x43OMMUTE_METHOD_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x44RIVING\x10\x01\x12\x0b\n\x07TRANSIT\x10\x02\x12\x0b\n\x07WALKING\x10\x03\x12\x0b\n\x07\x43YCLING\x10\x04\x42o\n\x1f\x63om.google.cloud.talent.v4beta1B\x0b\x43ommonProtoP\x01Z7cloud.google.com/go/talent/apiv4beta1/talentpb;talentpb\xa2\x02\x03\x43TSb\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.type.PostalAddress", "google/type/postal_address.proto"],
    ["google.type.LatLng", "google/type/latlng.proto"],
    ["google.type.Money", "google/type/money.proto"],
    ["google.protobuf.DoubleValue", "google/protobuf/wrappers.proto"],
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
    module Talent
      module V4beta1
        TimestampRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.TimestampRange").msgclass
        Location = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Location").msgclass
        Location::LocationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Location.LocationType").enummodule
        RequestMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.RequestMetadata").msgclass
        ResponseMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ResponseMetadata").msgclass
        DeviceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.DeviceInfo").msgclass
        DeviceInfo::DeviceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.DeviceInfo.DeviceType").enummodule
        CustomAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CustomAttribute").msgclass
        SpellingCorrection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SpellingCorrection").msgclass
        CompensationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationInfo").msgclass
        CompensationInfo::CompensationEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationInfo.CompensationEntry").msgclass
        CompensationInfo::CompensationRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationInfo.CompensationRange").msgclass
        CompensationInfo::CompensationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationInfo.CompensationType").enummodule
        CompensationInfo::CompensationUnit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationInfo.CompensationUnit").enummodule
        BatchOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.BatchOperationMetadata").msgclass
        BatchOperationMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.BatchOperationMetadata.State").enummodule
        CompanySize = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompanySize").enummodule
        JobBenefit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobBenefit").enummodule
        DegreeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.DegreeType").enummodule
        EmploymentType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.EmploymentType").enummodule
        JobLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobLevel").enummodule
        JobCategory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobCategory").enummodule
        PostingRegion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.PostingRegion").enummodule
        Visibility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Visibility").enummodule
        HtmlSanitization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.HtmlSanitization").enummodule
        CommuteMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CommuteMethod").enummodule
      end
    end
  end
end
