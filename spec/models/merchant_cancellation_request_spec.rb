=begin
#ChannelEngine API V2

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.4.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ChannelEngineApiClient::MerchantCancellationRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MerchantCancellationRequest' do
  before do
    # run before each test
    @instance = ChannelEngineApiClient::MerchantCancellationRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MerchantCancellationRequest' do
    it 'should create an instance of MerchantCancellationRequest' do
      expect(@instance).to be_instance_of(ChannelEngineApiClient::MerchantCancellationRequest)
    end
  end
  describe 'test attribute "merchant_cancellation_no"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "merchant_order_no"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "lines"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

