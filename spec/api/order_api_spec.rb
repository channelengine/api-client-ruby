=begin
#ChannelEngine API V2

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.4.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ChannelEngineApiClient::OrderApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderApi' do
  before do
    # run before each test
    @instance = ChannelEngineApiClient::OrderApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderApi' do
    it 'should create an instance of OrderApi' do
      expect(@instance).to be_instance_of(ChannelEngineApiClient::OrderApi)
    end
  end

  # unit tests for order_acknowledge
  # Merchant: Acknowledge Order
  # For merchants.    Acknowledge an order. By acknowledging the order the merchant can confirm that  the order has been imported. When acknowledging an order the merchant has to supply  references that uniquely identify the order and the order lines. These references  will be used in the other API calls.
  # @param model Relations between the id&#39;s returned by ChannelEngine and the references which the merchant uses
  # @param [Hash] opts the optional parameters
  # @return [ApiResponse]
  describe 'order_acknowledge test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_create
  # Channel: Create Order
  # For channels.    Create a new order in ChannelEngine.
  # @param model 
  # @param [Hash] opts the optional parameters
  # @return [ApiResponse]
  describe 'order_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_get_by_filter
  # Merchant: Get Orders By Filter
  # For merchants.                Fetch orders based on the provided OrderFilter
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filter_statuses 
  # @option opts [Array<String>] :filter_merchant_order_nos 
  # @option opts [BOOLEAN] :filter_exclude_marketplace_fulfilled_orders_and_lines 
  # @option opts [String] :filter_fulfillment_type Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.  To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true.
  # @option opts [Integer] :filter_page 
  # @return [CollectionOfMerchantOrderResponse]
  describe 'order_get_by_filter test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_get_new
  # Merchant: Get New Orders
  # For merchants.                Fetch newly placed orders (order with status NEW).
  # @param [Hash] opts the optional parameters
  # @return [CollectionOfMerchantOrderResponse]
  describe 'order_get_new test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_invoice
  # Merchant: Download Invoice
  # For merchants.    Generates the ChannelEngine VAT invoice for this order in PDF
  # @param merchant_order_no The unique order reference as used by the merchant
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language
  # @return [File]
  describe 'order_invoice test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_packing_slip
  # Merchant: Download Packing Slip
  # For merchants.    Generates the ChannelEngine packing slip for this order in PDF
  # @param merchant_order_no The unique order reference as used by the merchant
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language
  # @return [File]
  describe 'order_packing_slip test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
