=begin
#ChannelEngine API V2

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.4.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ChannelEngineApiClient::ProductApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductApi' do
  before do
    # run before each test
    @instance = ChannelEngineApiClient::ProductApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductApi' do
    it 'should create an instance of ProductApi' do
      expect(@instance).to be_instance_of(ChannelEngineApiClient::ProductApi)
    end
  end

  # unit tests for product_acknowledge_data_changes
  # Channel: Acknowledge Product Data Changes
  # For channels.                This endpoint should be called after a call to GET &#39;v2/products/data&#39;. After a call to  this endpoint ChannelEngine &#39;knows&#39; which products are known to the channel (and the last  time they have been updated) and is therefore able to only return the products  that really have changed since the last call to POST &#39;v2/products/data&#39;.  The supplied ChannelReturnNo will be saved  in our database and is supposed to be unique, the &#39;Updated&#39; and &#39;Removed&#39;  fields consist of ChannelReferences which are sent in a previous call  within the field &#39;Created&#39;.
  # @param changes The merchant references of the products which have been                successfully created, updated or deleted (after a call to &#39;GetDataChanges&#39;)
  # @param [Hash] opts the optional parameters
  # @return [ApiResponse]
  describe 'product_acknowledge_data_changes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for product_acknowledge_offer_changes
  # Channel: Acknowledge Product Offer Changes
  # For channels.                After a call to GET &#39;v2/products/offers&#39; this endpoint should be called with the  ChannelReturnNo of the products that are successfully updated.  Please see &#39;v2/products/data&#39; and &#39;v2/products/data&#39; for documentation.
  # @param changes The channel references of the updated products
  # @param [Hash] opts the optional parameters
  # @return [ApiResponse]
  describe 'product_acknowledge_offer_changes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for product_create
  # Merchant: Upsert Products
  # For merchants.    Upsert (update or create) products. The parent serves as the &#39;base&#39; product of the children.  For example, the children could be different sizes or colors of the parent product.  For channels where every size and color are different products this does not make any difference  (the children will just be sent separately, while ignoring the parent).  But there are channels where the parent and the children need to be sent together, for example  when there is one product with a list of sizes. In this case all the product information is retrieved  from the parent product while the size list is generated from the children.    Note that the parent itself is a &#39;blueprint&#39; of the child products and we do our best to make sure it  does not end up on the marketplaces itself. Only the children can be purchased.    It&#39;s not possible to nest parent and children more than one level (A parent can have many children,  but any child cannot itself also have children).    The supplied MerchantProductNo needs to be unique.
  # @param products 
  # @param [Hash] opts the optional parameters
  # @return [SingleOfProductCreationResult]
  describe 'product_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for product_delete
  # Merchant: Delete Product
  # For merchants.    Delete a product based on the merchant reference.  Note that we do not really delete a product, as the product  might still be referenced by orders etc. Therefore, the references  used for this product cannot be reused. We do however deactivate the product  which means that it will not be sent to channels.
  # @param merchant_product_no 
  # @param [Hash] opts the optional parameters
  # @return [ApiResponse]
  describe 'product_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for product_get_by_merchant_product_no
  # Merchant: Get Product
  # For merchants.    Retrieve a product based on the merchant reference.
  # @param merchant_product_no 
  # @param [Hash] opts the optional parameters
  # @return [SingleOfMerchantProductResponse]
  describe 'product_get_by_merchant_product_no test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for product_get_data_changes
  # Channel: Get Product Data Changes
  # For channels.    Get all products which have changes since the post http call to POST &#39;v2/products/data&#39;.  The response contains the products which should be created, updated or removed from the channel.  After the products have been received and processed successfully &#39;v2/products/data&#39; should  be called with the merchant references of the products which have been processed (see POST &#39;v2/products/data&#39;).   ChannelEnginewill save this information to make sure that the next call to GET &#39;v2/products/data&#39; only returns the  products that really have changes (and therefore should be created, updated or deleted).  A channel willing to integrate with channelengine should therefore only do the following things:      1. Periodically poll &#39;v2/products/data&#39; for changes.      2. If any products are returned, save, update or remove these products.      3. Send the merchant references of the products that have succesfully been processed      in step 2 to POST &#39;v2/products/data&#39;.       These three simple steps will make sure that the products on the channel will be synchronized   with the products on ChannelEngine. ChannelEngine will use the API key to determine the customer  whose products should be returned. Note that child products are only returned if their parent product  has been acknowledged in a previous transaction. This way ChannelEngine knows the value of   &#39;ChannelParentReference&#39;.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_count Optional - limit the amount of products returned for each field              (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number.
  # @return [SingleOfChannelProductChangesResponse]
  describe 'product_get_data_changes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for product_get_offer_changes
  # Channel: Get Product Offer Changes
  # For channels.                GET &#39;v2/products/offers&#39; and POST &#39;v2/products/offers&#39; closely resemble GET &#39;v2/products/data&#39; and POST &#39;v2/products/data&#39;. See the &#39;v2/products/data&#39;  endpoints for documentation. The difference between both endpoints is that &#39;v2/products/offers&#39; only returns Price and Stock updates and can (and should)  therefore be called more often to keep this information (which might change frequently) up to date.
  # @param [Hash] opts the optional parameters
  # @return [CollectionOfChannelOfferResponse]
  describe 'product_get_offer_changes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
