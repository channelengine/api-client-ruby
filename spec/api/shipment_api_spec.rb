=begin
#ChannelEngine API V2

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.4.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ChannelEngineApiClient::ShipmentApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShipmentApi' do
  before do
    # run before each test
    @instance = ChannelEngineApiClient::ShipmentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShipmentApi' do
    it 'should create an instance of ShipmentApi' do
      expect(@instance).to be_instance_of(ChannelEngineApiClient::ShipmentApi)
    end
  end

  # unit tests for shipment_create
  # Merchant: Create Shipment
  # For merchants.    Mark (part of) an order as shipped.
  # @param model 
  # @param [Hash] opts the optional parameters
  # @return [ApiResponse]
  describe 'shipment_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for shipment_index
  # Channel: Get Shipments
  # For channels.    Gets all shipments created since the supplied date.
  # @param created_since 
  # @param [Hash] opts the optional parameters
  # @return [CollectionOfChannelShipmentResponse]
  describe 'shipment_index test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for shipment_update
  # Merchant: Update Shipment
  # For merchants.    Update an existing shipment with tracking information
  # @param merchant_shipment_no The merchant&#39;s shipment reference
  # @param model The updated tracking information
  # @param [Hash] opts the optional parameters
  # @return [ApiResponse]
  describe 'shipment_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
