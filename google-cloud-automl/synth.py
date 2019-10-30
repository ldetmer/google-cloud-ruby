# Copyright 2019 Google LLC
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

"""This script is used to synthesize generated parts of this library."""

import synthtool as s
import synthtool.gcp as gcp
import synthtool.languages.ruby as ruby
import logging
import os
import re

logging.basicConfig(level=logging.DEBUG)

gapic = gcp.GAPICGenerator()

v1beta1_library = gapic.ruby_library(
    'automl', 'v1', artman_output_name='google-cloud-ruby/google-cloud-automl',
    config_path='/google/cloud/automl/artman_automl_v1beta1.yaml'
)

# Move/rename paths from "auto_m_l" or "auto_ml" to "automl"
os.rename(v1beta1_library / 'google-cloud-auto_m_l.gemspec', v1beta1_library / 'google-cloud-automl.gemspec')
os.rename(v1beta1_library / 'test/google/cloud/auto_m_l', v1beta1_library / 'test/google/cloud/automl')
os.rename(v1beta1_library / 'lib/google/cloud/auto_m_l.rb', v1beta1_library / 'lib/google/cloud/automl.rb')
os.rename(v1beta1_library / 'lib/google/cloud/auto_m_l/v1beta1.rb', v1beta1_library / 'lib/google/cloud/automl/v1beta1.rb')
for item in os.listdir(v1beta1_library / 'lib/google/cloud/auto_m_l/v1beta1'):
    os.rename(v1beta1_library / 'lib/google/cloud/auto_m_l/v1beta1' / item, v1beta1_library / 'lib/google/cloud/automl/v1beta1' / item)
os.rename(v1beta1_library / 'lib/google/cloud/automl/v1beta1/auto_ml_client_config.json', v1beta1_library / 'lib/google/cloud/automl/v1beta1/automl_client_config.json')
os.rename(v1beta1_library / 'lib/google/cloud/automl/v1beta1/auto_ml_client.rb', v1beta1_library / 'lib/google/cloud/automl/v1beta1/automl_client.rb')
os.rename(v1beta1_library / 'test/google/cloud/automl/v1beta1/auto_ml_client_test.rb', v1beta1_library / 'test/google/cloud/automl/v1beta1/automl_client_test.rb')

s.copy(v1beta1_library / 'lib')
s.copy(v1beta1_library / 'test')
s.copy(v1beta1_library / 'LICENSE')
s.copy(v1beta1_library / 'README.md')
s.copy(v1beta1_library / '.gitignore')
s.copy(v1beta1_library / '.yardopts')
s.copy(v1beta1_library / 'google-cloud-automl.gemspec', merge=ruby.merge_gemspec)

# Copy common templates
templates = gcp.CommonTemplates().ruby_library()
s.copy(templates)

# Update gemspec to reflect Ruby 2.4
ruby.update_gemspec('google-cloud-automl.gemspec')

# Update README to reflect Ruby 2.4
s.replace(
    'README.md',
    'Ruby 2.3',
    'Ruby 2.4'
)

# Update file paths in generated files
s.replace(
    [
        'README.md',
        'google-cloud-automl.gemspec',
        'test/**/*.rb',
        'lib/**/*.rb'
    ],
    'auto_m_l', 'automl'
)
s.replace(
    [
        'test/**/*.rb',
        'lib/**/*.rb'
    ],
    'auto_ml', 'automl'
)
s.replace(
    [
        'test/**/*.rb',
        'lib/**/*.rb',
        'lib/**/*.json'
    ],
    'AutoMl', 'AutoML'
)
s.replace(
    [
        'google-cloud-automl.gemspec',
        'AUTHENTICATION.md',
        'test/**/*.rb',
        'lib/**/*.rb'
    ],
    'Automl', 'AutoML'
)
s.replace(
    'lib/**/*.*',
    'google.cloud.automl.v1beta1.AutoML',
    'google.cloud.automl.v1beta1.AutoMl'
)

# Update Authentication Guide for multi-service clients
s.replace(
    'AUTHENTICATION.md',
    'Google::Cloud::AutoML.new',
    'Google::Cloud::AutoML::AutoML.new'
)

# Support for service_address
s.replace(
    [
        'lib/google/cloud/automl.rb',
        'lib/google/cloud/automl/v*.rb',
        'lib/google/cloud/automl/v*/*_client.rb'
    ],
    '\n(\\s+)#(\\s+)@param exception_transformer',
    '\n\\1#\\2@param service_address [String]\n' +
        '\\1#\\2  Override for the service hostname, or `nil` to leave as the default.\n' +
        '\\1#\\2@param service_port [Integer]\n' +
        '\\1#\\2  Override for the service port, or `nil` to leave as the default.\n' +
        '\\1#\\2@param exception_transformer'
)
s.replace(
    [
        'lib/google/cloud/automl/v*.rb',
        'lib/google/cloud/automl/v*/*_client.rb'
    ],
    '\n(\\s+)metadata: nil,\n\\s+exception_transformer: nil,\n',
    '\n\\1metadata: nil,\n\\1service_address: nil,\n\\1service_port: nil,\n\\1exception_transformer: nil,\n'
)
s.replace(
    [
        'lib/google/cloud/automl/v*.rb',
        'lib/google/cloud/automl/v*/*_client.rb'
    ],
    ',\n(\\s+)lib_name: lib_name,\n\\s+lib_version: lib_version',
    ',\n\\1lib_name: lib_name,\n\\1service_address: service_address,\n\\1service_port: service_port,\n\\1lib_version: lib_version'
)
s.replace(
    'lib/google/cloud/automl/v*/*_client.rb',
    'service_path = self\\.class::SERVICE_ADDRESS',
    'service_path = service_address || self.class::SERVICE_ADDRESS'
)
s.replace(
    'lib/google/cloud/automl/v*/*_client.rb',
    'port = self\\.class::DEFAULT_SERVICE_PORT',
    'port = service_port || self.class::DEFAULT_SERVICE_PORT'
)
s.replace(
    'google-cloud-automl.gemspec',
    'gem.add_dependency "google-gax", "~> 1\\.[\\d\\.]+"',
    "\n".join([
        'gem.add_dependency "google-gax", "~> 1.8"',
        '  gem.add_dependency "googleapis-common-protos", ">= 1.3.9", "< 2.0"',
        '  gem.add_dependency "googleapis-common-protos-types", ">= 1.0.4", "< 2.0"'
    ])
)

# https://github.com/googleapis/gapic-generator/issues/2242
def escape_braces(match):
    expr = re.compile('^([^`]*(`[^`]*`[^`]*)*)([^`#\\$\\\\])\\{([\\w,]+)\\}')
    content = match.group(0)
    while True:
        content, count = expr.subn('\\1\\3\\\\\\\\{\\4}', content)
        if count == 0:
            return content
s.replace(
    'lib/google/cloud/automl/**/*.rb',
    '\n(\\s+)#[^\n]*[^\n#\\$\\\\]\\{[\\w,]+\\}',
    escape_braces)

# https://github.com/googleapis/gapic-generator/issues/2243
s.replace(
    'lib/google/cloud/automl/*/*_client.rb',
    '(\n\\s+class \\w+Client\n)(\\s+)(attr_reader :\\w+_stub)',
    '\\1\\2# @private\n\\2\\3')

# https://github.com/googleapis/gapic-generator/issues/2279
s.replace(
    'lib/google/**/*.rb',
    '\\A(((#[^\n]*)?\n)*# (Copyright \\d+|Generated by the protocol buffer compiler)[^\n]+\n(#[^\n]*\n)*\n)([^\n])',
    '\\1\n\\6')

# https://github.com/googleapis/gapic-generator/issues/2323
s.replace(
    [
        'lib/**/*.rb',
        'README.md'
    ],
    'https://github\\.com/GoogleCloudPlatform/google-cloud-ruby',
    'https://github.com/googleapis/google-cloud-ruby'
)
s.replace(
    [
        'lib/**/*.rb',
        'README.md'
    ],
    'https://googlecloudplatform\\.github\\.io/google-cloud-ruby',
    'https://googleapis.github.io/google-cloud-ruby'
)

s.replace(
    'google-cloud-automl.gemspec',
    '"README.md", "LICENSE"',
    '"README.md", "AUTHENTICATION.md", "LICENSE"'
)
s.replace(
    '.yardopts',
    'README.md\n',
    'README.md\nAUTHENTICATION.md\nLICENSE\n'
)

# https://github.com/googleapis/google-cloud-ruby/issues/3058
s.replace(
    'google-cloud-automl.gemspec',
    '\nGem::Specification.new do',
    'require File.expand_path("../lib/google/cloud/automl/version", __FILE__)\n\nGem::Specification.new do'
)
s.replace(
    'google-cloud-automl.gemspec',
    '(gem.version\s+=\s+).\d+.\d+.\d.*$',
    '\\1Google::Cloud::AutoML::VERSION'
)
s.replace(
    'lib/google/cloud/automl/v1beta1/*_client.rb',
    '(require \".*credentials\"\n)\n',
    '\\1require "google/cloud/automl/version"\n\n'
)
s.replace(
    'lib/google/cloud/automl/v1beta1/*_client.rb',
    'Gem.loaded_specs\[.*\]\.version\.version',
    'Google::Cloud::AutoML::VERSION'
)

# Fix links for devsite migration
for file in ['lib/**/*.rb', '*.md']:
    s.replace(
        file,
        'https://googleapis.github.io/google-cloud-ruby/#/docs/google-cloud-logging/latest/google/cloud/logging/logger',
        'https://googleapis.dev/ruby/google-cloud-logging/latest'
    )
s.replace(
    '*.md',
    'https://googleapis.github.io/google-cloud-ruby/#/docs/.*/authentication',
    'https://googleapis.dev/ruby/google-cloud-automl/latest/file.AUTHENTICATION.html'
)
s.replace(
    'lib/**/*.rb',
    'https://googleapis.github.io/google-cloud-ruby/#/docs/.*/authentication',
    'https://googleapis.dev/ruby/google-cloud-automl/latest/file.AUTHENTICATION.html'
)
s.replace(
    'README.md',
    'github.io/google-cloud-ruby/#/docs/google-cloud-automl/latest/.*$',
    'dev/ruby/google-cloud-automl/latest'
)
