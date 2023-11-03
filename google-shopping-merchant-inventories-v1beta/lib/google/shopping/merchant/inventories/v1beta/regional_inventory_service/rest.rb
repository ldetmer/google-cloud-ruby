# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/shopping/merchant/inventories/v1beta/version"

require "google/shopping/merchant/inventories/v1beta/regional_inventory_service/credentials"
require "google/shopping/merchant/inventories/v1beta/regional_inventory_service/paths"
require "google/shopping/merchant/inventories/v1beta/regional_inventory_service/rest/client"

module Google
  module Shopping
    module Merchant
      module Inventories
        module V1beta
          ##
          # Service to manage regional inventory for products. There is also separate
          # `regions` resource and API to manage regions definitions.
          #
          # To load this service and instantiate a REST client:
          #
          #     require "google/shopping/merchant/inventories/v1beta/regional_inventory_service/rest"
          #     client = ::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Rest::Client.new
          #
          module RegionalInventoryService
            # Client for the REST transport
            module Rest
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/shopping/merchant/inventories/v1beta/regional_inventory_service/rest/helpers" if ::File.file? helper_path