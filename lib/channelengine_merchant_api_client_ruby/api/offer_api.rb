=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.6.0

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

    # Update stock or price.
    # 
    # @param updates References to the products that should be updated, and the new values  for the stock or price fields. It is possible to supply only one of the two fields  or both.
    # @param [Hash] opts the optional parameters
    # @return [SingleOfCollectionsDictionary2Generic]
    def offer_stock_price_update(updates, opts = {})
      data, _status_code, _headers = offer_stock_price_update_with_http_info(updates, opts)
      return data
    end

    # Update stock or price.
    # 
    # @param updates References to the products that should be updated, and the new values  for the stock or price fields. It is possible to supply only one of the two fields  or both.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleOfCollectionsDictionary2Generic, Fixnum, Hash)>] SingleOfCollectionsDictionary2Generic data, response status code and response headers
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
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

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
        :return_type => 'SingleOfCollectionsDictionary2Generic')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfferApi#offer_stock_price_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
