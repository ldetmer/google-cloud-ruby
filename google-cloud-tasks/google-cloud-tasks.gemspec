# -*- ruby -*-
# encoding: utf-8
require File.expand_path("../lib/google/cloud/tasks/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-tasks"
  gem.version       = Google::Cloud::Tasks::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "google-cloud-tasks is the official library for Cloud Tasks API."
  gem.summary       = "API Client library for Cloud Tasks API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby/tree/master/google-cloud-tasks"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.4"

  gem.add_dependency "google-gax", "~> 1.8"
  gem.add_dependency "googleapis-common-protos", ">= 1.3.9", "< 2.0"
  gem.add_dependency "googleapis-common-protos-types", ">= 1.0.4", "< 2.0"
  gem.add_dependency "grpc-google-iam-v1", "~> 0.6.9"

  gem.add_development_dependency "minitest", "~> 5.10"
  gem.add_development_dependency "redcarpet", "~> 3.0"
  gem.add_development_dependency "google-style", "~> 1.24.0"
  gem.add_development_dependency "simplecov", "~> 0.9"
  gem.add_development_dependency "yard", "~> 0.9"
end
