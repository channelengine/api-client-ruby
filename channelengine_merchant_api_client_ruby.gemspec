# -*- encoding: utf-8 -*-

=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.7

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "channelengine_merchant_api_client_ruby/version"

Gem::Specification.new do |s|
  s.name        = "channelengine_merchant_api_client_ruby"
  s.version     = ChannelEngineMerchantApiClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["ChannelEngine"]
  s.email       = ["support@channelengine.com"]
  s.homepage    = "https://www.channelengine.com"
  s.summary     = "ChannelEngine Merchant API Client for ruby"
  s.description = "ChannelEngine API for merchants"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
