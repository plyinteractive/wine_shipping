=begin
#API from Wineshipping

#Wineshipping API is a programmatically consumable service or an Application Programming Interface (API) platform designed to enable Wineshipping LLC's client applications to natively transmit and manage their order, view inventory, track shipments etc.<br /><br />In order to access API operations request a UserKey and Password from Wineshipping. For any questions please contact Wineshipping Helpdesk at <a href='mailto:IT-Help@wineshipping.com?Subject=API from Wineshipping'>IT-Help@wineshipping.com</a>.

OpenAPI spec version: V3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module WineShipping
  class InventoryMovementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Successful execution of this method will generate a new purchase order in Wineshipping's system and will return a transaction reference identifier. Store this identifier back into your system for reference later in the event there is an issue with the purchase order.
    # @param order_details_info 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_purchase_order(order_details_info, opts = {})
      create_purchase_order_with_http_info(order_details_info, opts)
      nil
    end

    # Successful execution of this method will generate a new purchase order in Wineshipping&#39;s system and will return a transaction reference identifier. Store this identifier back into your system for reference later in the event there is an issue with the purchase order.
    # @param order_details_info 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_purchase_order_with_http_info(order_details_info, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InventoryMovementApi.create_purchase_order ...'
      end
      # verify the required parameter 'order_details_info' is set
      if @api_client.config.client_side_validation && order_details_info.nil?
        fail ArgumentError, "Missing the required parameter 'order_details_info' when calling InventoryMovementApi.create_purchase_order"
      end
      # resource path
      local_var_path = '/api/InventoryMovement/CreatePurchaseOrder'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(order_details_info)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryMovementApi#create_purchase_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Successful execution of this method will generate a new transfer order in Wineshipping's system and will return a transaction reference identifier. Store this identifier back into your system for reference later in the event there is an issue with the transfer order.
    # @param order_details_info 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_transfer_order(order_details_info, opts = {})
      create_transfer_order_with_http_info(order_details_info, opts)
      nil
    end

    # Successful execution of this method will generate a new transfer order in Wineshipping&#39;s system and will return a transaction reference identifier. Store this identifier back into your system for reference later in the event there is an issue with the transfer order.
    # @param order_details_info 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_transfer_order_with_http_info(order_details_info, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InventoryMovementApi.create_transfer_order ...'
      end
      # verify the required parameter 'order_details_info' is set
      if @api_client.config.client_side_validation && order_details_info.nil?
        fail ArgumentError, "Missing the required parameter 'order_details_info' when calling InventoryMovementApi.create_transfer_order"
      end
      # resource path
      local_var_path = '/api/InventoryMovement/CreateTransferOrder'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(order_details_info)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryMovementApi#create_transfer_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end