=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module ChannelEngineMerchantApiClient
  class OrderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Acknowledge Order.
    # Acknowledge an order. By acknowledging the order the merchant can confirm that<br />the order has been imported. When acknowledging an order the merchant has to supply<br />references that uniquely identify the order and the order lines. These references<br />will be used in the other API calls.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantOrderAcknowledgementRequest] :merchant_order_acknowledgement_request Relations between the id&#39;s returned by ChannelEngine and the references which the merchant uses.
    # @return [ApiResponse]
    def order_acknowledge(opts = {})
      data, _status_code, _headers = order_acknowledge_with_http_info(opts)
      data
    end

    # Acknowledge Order.
    # Acknowledge an order. By acknowledging the order the merchant can confirm that&lt;br /&gt;the order has been imported. When acknowledging an order the merchant has to supply&lt;br /&gt;references that uniquely identify the order and the order lines. These references&lt;br /&gt;will be used in the other API calls.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantOrderAcknowledgementRequest] :merchant_order_acknowledgement_request Relations between the id&#39;s returned by ChannelEngine and the references which the merchant uses.
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def order_acknowledge_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_acknowledge ...'
      end
      # resource path
      local_var_path = '/v2/orders/acknowledge'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'merchant_order_acknowledgement_request']) 

      # return_type
      return_type = opts[:return_type] || 'ApiResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_acknowledge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Orders By Filter.
    # Fetch orders based on the provided OrderFilter.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<OrderStatusView>] :statuses Order status(es) to filter on.
    # @option opts [Array<String>] :email_addresses Client emailaddresses to filter on.
    # @option opts [Array<String>] :merchant_order_nos Filter on unique order reference used by the merchant.
    # @option opts [Array<String>] :channel_order_nos Filter on unique order reference used by the channel.
    # @option opts [DateTime] :from_date Filter on the order date, starting from this date. This date is inclusive.
    # @option opts [DateTime] :to_date Filter on the order date, until this date. This date is exclusive.
    # @option opts [Boolean] :exclude_marketplace_fulfilled_orders_and_lines Exclude order (lines) fulfilled by the marketplace (amazon:FBA, bol:LVB, etc.)
    # @option opts [FulfillmentType] :fulfillment_type Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.&lt;br /&gt;To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true.
    # @option opts [Boolean] :only_with_cancellation_requests Filter on orders containing cancellation requests.&lt;br /&gt;Some channels allow a customer to cancel an order until it has been shipped.&lt;br /&gt;When an order has already been acknowledged in ChannelEngine, it can only be cancelled by creating a cancellation.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfMerchantOrderResponse]
    def order_get_by_filter(opts = {})
      data, _status_code, _headers = order_get_by_filter_with_http_info(opts)
      data
    end

    # Get Orders By Filter.
    # Fetch orders based on the provided OrderFilter.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<OrderStatusView>] :statuses Order status(es) to filter on.
    # @option opts [Array<String>] :email_addresses Client emailaddresses to filter on.
    # @option opts [Array<String>] :merchant_order_nos Filter on unique order reference used by the merchant.
    # @option opts [Array<String>] :channel_order_nos Filter on unique order reference used by the channel.
    # @option opts [DateTime] :from_date Filter on the order date, starting from this date. This date is inclusive.
    # @option opts [DateTime] :to_date Filter on the order date, until this date. This date is exclusive.
    # @option opts [Boolean] :exclude_marketplace_fulfilled_orders_and_lines Exclude order (lines) fulfilled by the marketplace (amazon:FBA, bol:LVB, etc.)
    # @option opts [FulfillmentType] :fulfillment_type Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.&lt;br /&gt;To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true.
    # @option opts [Boolean] :only_with_cancellation_requests Filter on orders containing cancellation requests.&lt;br /&gt;Some channels allow a customer to cancel an order until it has been shipped.&lt;br /&gt;When an order has already been acknowledged in ChannelEngine, it can only be cancelled by creating a cancellation.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfMerchantOrderResponse, Integer, Hash)>] CollectionOfMerchantOrderResponse data, response status code and response headers
    def order_get_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_get_by_filter ...'
      end
      # resource path
      local_var_path = '/v2/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      query_params[:'emailAddresses'] = @api_client.build_collection_param(opts[:'email_addresses'], :multi) if !opts[:'email_addresses'].nil?
      query_params[:'merchantOrderNos'] = @api_client.build_collection_param(opts[:'merchant_order_nos'], :multi) if !opts[:'merchant_order_nos'].nil?
      query_params[:'channelOrderNos'] = @api_client.build_collection_param(opts[:'channel_order_nos'], :multi) if !opts[:'channel_order_nos'].nil?
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?
      query_params[:'excludeMarketplaceFulfilledOrdersAndLines'] = opts[:'exclude_marketplace_fulfilled_orders_and_lines'] if !opts[:'exclude_marketplace_fulfilled_orders_and_lines'].nil?
      query_params[:'fulfillmentType'] = opts[:'fulfillment_type'] if !opts[:'fulfillment_type'].nil?
      query_params[:'onlyWithCancellationRequests'] = opts[:'only_with_cancellation_requests'] if !opts[:'only_with_cancellation_requests'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'CollectionOfMerchantOrderResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_get_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get New Orders.
    # Fetch newly placed orders (order with status NEW).
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfMerchantOrderResponse]
    def order_get_new(opts = {})
      data, _status_code, _headers = order_get_new_with_http_info(opts)
      data
    end

    # Get New Orders.
    # Fetch newly placed orders (order with status NEW).
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfMerchantOrderResponse, Integer, Hash)>] CollectionOfMerchantOrderResponse data, response status code and response headers
    def order_get_new_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_get_new ...'
      end
      # resource path
      local_var_path = '/v2/orders/new'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'CollectionOfMerchantOrderResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_get_new\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download Invoice.
    # Generates the ChannelEngine VAT invoice for this order in PDF.
    # @param merchant_order_no [String] The unique order reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language. (default to false)
    # @return [File]
    def order_invoice(merchant_order_no, opts = {})
      data, _status_code, _headers = order_invoice_with_http_info(merchant_order_no, opts)
      data
    end

    # Download Invoice.
    # Generates the ChannelEngine VAT invoice for this order in PDF.
    # @param merchant_order_no [String] The unique order reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language.
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def order_invoice_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_invoice ...'
      end
      # resource path
      local_var_path = '/v2/orders/{merchantOrderNo}/invoice'.sub('{' + 'merchantOrderNo' + '}', CGI.escape(merchant_order_no.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'useCustomerCulture'] = opts[:'use_customer_culture'] if !opts[:'use_customer_culture'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download Packing Slip.
    # Generates the ChannelEngine packing slip for this order in PDF.
    # @param merchant_order_no [String] The unique order reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language. (default to false)
    # @return [File]
    def order_packing_slip(merchant_order_no, opts = {})
      data, _status_code, _headers = order_packing_slip_with_http_info(merchant_order_no, opts)
      data
    end

    # Download Packing Slip.
    # Generates the ChannelEngine packing slip for this order in PDF.
    # @param merchant_order_no [String] The unique order reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language.
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def order_packing_slip_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_packing_slip ...'
      end
      # resource path
      local_var_path = '/v2/orders/{merchantOrderNo}/packingslip'.sub('{' + 'merchantOrderNo' + '}', CGI.escape(merchant_order_no.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'useCustomerCulture'] = opts[:'use_customer_culture'] if !opts[:'use_customer_culture'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_packing_slip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Comment.
    # Update the merchant comment for an order. Both the ChannelEngine order id as the<br />merchant order number can be used for updating a comment.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantOrderCommentUpdateRequest] :merchant_order_comment_update_request 
    # @return [ApiResponse]
    def order_update(opts = {})
      data, _status_code, _headers = order_update_with_http_info(opts)
      data
    end

    # Update Comment.
    # Update the merchant comment for an order. Both the ChannelEngine order id as the&lt;br /&gt;merchant order number can be used for updating a comment.
    # @param [Hash] opts the optional parameters
    # @option opts [MerchantOrderCommentUpdateRequest] :merchant_order_comment_update_request 
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def order_update_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_update ...'
      end
      # resource path
      local_var_path = '/v2/orders/comment'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'merchant_order_comment_update_request']) 

      # return_type
      return_type = opts[:return_type] || 'ApiResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKey']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
