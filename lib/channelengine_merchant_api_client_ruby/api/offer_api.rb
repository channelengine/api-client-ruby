=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require "uri"

module ChannelEngineMerchantApiClient
  class OfferApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get stock for products
    # Get stock of products at stock location(s)
    # @param skus List of your products&#39; sku&#39;s
    # @param stock_location_ids The ChannelEngine id of the stock location(s)
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfMerchantOfferGetStockResponse]
    def offer_get_stock(skus, stock_location_ids, opts = {})
      data, _status_code, _headers = offer_get_stock_with_http_info(skus, stock_location_ids, opts)
      return data
    end

    # Get stock for products
    # Get stock of products at stock location(s)
    # @param skus List of your products&#39; sku&#39;s
    # @param stock_location_ids The ChannelEngine id of the stock location(s)
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfMerchantOfferGetStockResponse, Fixnum, Hash)>] CollectionOfMerchantOfferGetStockResponse data, response status code and response headers
    def offer_get_stock_with_http_info(skus, stock_location_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OfferApi.offer_get_stock ..."
      end
      # verify the required parameter 'skus' is set
      if @api_client.config.client_side_validation && skus.nil?
        fail ArgumentError, "Missing the required parameter 'skus' when calling OfferApi.offer_get_stock"
      end
      # verify the required parameter 'stock_location_ids' is set
      if @api_client.config.client_side_validation && stock_location_ids.nil?
        fail ArgumentError, "Missing the required parameter 'stock_location_ids' when calling OfferApi.offer_get_stock"
      end
      # resource path
      local_var_path = "/v2/offer/stock"

      # query parameters
      query_params = {}
      query_params[:'skus'] = @api_client.build_collection_param(skus, :multi)
      query_params[:'stockLocationIds'] = @api_client.build_collection_param(stock_location_ids, :multi)

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CollectionOfMerchantOfferGetStockResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfferApi#offer_get_stock\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update stock or price.
    # 
    # @param updates References to the products that should be updated, and the new values  for the stock or price fields. It is possible to supply only one of the two fields  or both.
    # @param [Hash] opts the optional parameters
    # @return [SingleOfDictionary2]
    def offer_stock_price_update(updates, opts = {})
      data, _status_code, _headers = offer_stock_price_update_with_http_info(updates, opts)
      return data
    end

    # Update stock or price.
    # 
    # @param updates References to the products that should be updated, and the new values  for the stock or price fields. It is possible to supply only one of the two fields  or both.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleOfDictionary2, Fixnum, Hash)>] SingleOfDictionary2 data, response status code and response headers
    def offer_stock_price_update_with_http_info(updates, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OfferApi.offer_stock_price_update ..."
      end
      # verify the required parameter 'updates' is set
      if @api_client.config.client_side_validation && updates.nil?
        fail ArgumentError, "Missing the required parameter 'updates' when calling OfferApi.offer_stock_price_update"
      end
      # resource path
      local_var_path = "/v2/offer"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(updates)
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SingleOfDictionary2')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfferApi#offer_stock_price_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
