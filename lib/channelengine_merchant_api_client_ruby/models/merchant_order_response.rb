=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module ChannelEngineMerchantApiClient

  class MerchantOrderResponse
    # The unique identifier used by ChannelEngine. This identifier does  not have to be saved. It should only be used in a call to acknowledge the order.
    attr_accessor :id

    attr_accessor :channel_name

    attr_accessor :channel_order_support

    attr_accessor :channel_order_no

    attr_accessor :status

    # The total value of the order lines including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :sub_total_incl_vat

    # The total amount of VAT charged over the order lines  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :sub_total_vat

    # The total amount of VAT charged over the shipping fee  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :shipping_costs_vat

    # The total value of the order including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :total_incl_vat

    # The total amount of VAT charged over the total value of te order  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :total_vat

    # The total value of the order lines including VAT  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_sub_total_incl_vat

    # The total amount of VAT charged over the order lines  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_sub_total_vat

    # The shipping fee including VAT  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_shipping_costs_incl_vat

    # The total amount of VAT charged over the shipping fee  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_shipping_costs_vat

    # The total value of the order including VAT  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_total_incl_vat

    # The total amount of VAT charged over the total value of te order  (in the currency in which the order was paid for, see CurrencyCode).
    attr_accessor :original_total_vat

    attr_accessor :lines

    attr_accessor :phone

    attr_accessor :email

    attr_accessor :company_registration_no

    attr_accessor :vat_no

    attr_accessor :payment_method

    # The shipping fee including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :shipping_costs_incl_vat

    attr_accessor :currency_code

    attr_accessor :order_date

    attr_accessor :channel_customer_no

    attr_accessor :billing_address

    attr_accessor :shipping_address

    attr_accessor :extra_data

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'channel_name' => :'ChannelName',
        :'channel_order_support' => :'ChannelOrderSupport',
        :'channel_order_no' => :'ChannelOrderNo',
        :'status' => :'Status',
        :'sub_total_incl_vat' => :'SubTotalInclVat',
        :'sub_total_vat' => :'SubTotalVat',
        :'shipping_costs_vat' => :'ShippingCostsVat',
        :'total_incl_vat' => :'TotalInclVat',
        :'total_vat' => :'TotalVat',
        :'original_sub_total_incl_vat' => :'OriginalSubTotalInclVat',
        :'original_sub_total_vat' => :'OriginalSubTotalVat',
        :'original_shipping_costs_incl_vat' => :'OriginalShippingCostsInclVat',
        :'original_shipping_costs_vat' => :'OriginalShippingCostsVat',
        :'original_total_incl_vat' => :'OriginalTotalInclVat',
        :'original_total_vat' => :'OriginalTotalVat',
        :'lines' => :'Lines',
        :'phone' => :'Phone',
        :'email' => :'Email',
        :'company_registration_no' => :'CompanyRegistrationNo',
        :'vat_no' => :'VatNo',
        :'payment_method' => :'PaymentMethod',
        :'shipping_costs_incl_vat' => :'ShippingCostsInclVat',
        :'currency_code' => :'CurrencyCode',
        :'order_date' => :'OrderDate',
        :'channel_customer_no' => :'ChannelCustomerNo',
        :'billing_address' => :'BillingAddress',
        :'shipping_address' => :'ShippingAddress',
        :'extra_data' => :'ExtraData'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'channel_name' => :'String',
        :'channel_order_support' => :'String',
        :'channel_order_no' => :'String',
        :'status' => :'String',
        :'sub_total_incl_vat' => :'Float',
        :'sub_total_vat' => :'Float',
        :'shipping_costs_vat' => :'Float',
        :'total_incl_vat' => :'Float',
        :'total_vat' => :'Float',
        :'original_sub_total_incl_vat' => :'Float',
        :'original_sub_total_vat' => :'Float',
        :'original_shipping_costs_incl_vat' => :'Float',
        :'original_shipping_costs_vat' => :'Float',
        :'original_total_incl_vat' => :'Float',
        :'original_total_vat' => :'Float',
        :'lines' => :'Array<MerchantOrderLineResponse>',
        :'phone' => :'String',
        :'email' => :'String',
        :'company_registration_no' => :'String',
        :'vat_no' => :'String',
        :'payment_method' => :'String',
        :'shipping_costs_incl_vat' => :'Float',
        :'currency_code' => :'String',
        :'order_date' => :'DateTime',
        :'channel_customer_no' => :'String',
        :'billing_address' => :'Address',
        :'shipping_address' => :'Address',
        :'extra_data' => :'Hash<String, String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'ChannelName')
        self.channel_name = attributes[:'ChannelName']
      end

      if attributes.has_key?(:'ChannelOrderSupport')
        self.channel_order_support = attributes[:'ChannelOrderSupport']
      end

      if attributes.has_key?(:'ChannelOrderNo')
        self.channel_order_no = attributes[:'ChannelOrderNo']
      end

      if attributes.has_key?(:'Status')
        self.status = attributes[:'Status']
      end

      if attributes.has_key?(:'SubTotalInclVat')
        self.sub_total_incl_vat = attributes[:'SubTotalInclVat']
      end

      if attributes.has_key?(:'SubTotalVat')
        self.sub_total_vat = attributes[:'SubTotalVat']
      end

      if attributes.has_key?(:'ShippingCostsVat')
        self.shipping_costs_vat = attributes[:'ShippingCostsVat']
      end

      if attributes.has_key?(:'TotalInclVat')
        self.total_incl_vat = attributes[:'TotalInclVat']
      end

      if attributes.has_key?(:'TotalVat')
        self.total_vat = attributes[:'TotalVat']
      end

      if attributes.has_key?(:'OriginalSubTotalInclVat')
        self.original_sub_total_incl_vat = attributes[:'OriginalSubTotalInclVat']
      end

      if attributes.has_key?(:'OriginalSubTotalVat')
        self.original_sub_total_vat = attributes[:'OriginalSubTotalVat']
      end

      if attributes.has_key?(:'OriginalShippingCostsInclVat')
        self.original_shipping_costs_incl_vat = attributes[:'OriginalShippingCostsInclVat']
      end

      if attributes.has_key?(:'OriginalShippingCostsVat')
        self.original_shipping_costs_vat = attributes[:'OriginalShippingCostsVat']
      end

      if attributes.has_key?(:'OriginalTotalInclVat')
        self.original_total_incl_vat = attributes[:'OriginalTotalInclVat']
      end

      if attributes.has_key?(:'OriginalTotalVat')
        self.original_total_vat = attributes[:'OriginalTotalVat']
      end

      if attributes.has_key?(:'Lines')
        if (value = attributes[:'Lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.has_key?(:'Phone')
        self.phone = attributes[:'Phone']
      end

      if attributes.has_key?(:'Email')
        self.email = attributes[:'Email']
      end

      if attributes.has_key?(:'CompanyRegistrationNo')
        self.company_registration_no = attributes[:'CompanyRegistrationNo']
      end

      if attributes.has_key?(:'VatNo')
        self.vat_no = attributes[:'VatNo']
      end

      if attributes.has_key?(:'PaymentMethod')
        self.payment_method = attributes[:'PaymentMethod']
      end

      if attributes.has_key?(:'ShippingCostsInclVat')
        self.shipping_costs_incl_vat = attributes[:'ShippingCostsInclVat']
      end

      if attributes.has_key?(:'CurrencyCode')
        self.currency_code = attributes[:'CurrencyCode']
      end

      if attributes.has_key?(:'OrderDate')
        self.order_date = attributes[:'OrderDate']
      end

      if attributes.has_key?(:'ChannelCustomerNo')
        self.channel_customer_no = attributes[:'ChannelCustomerNo']
      end

      if attributes.has_key?(:'BillingAddress')
        self.billing_address = attributes[:'BillingAddress']
      end

      if attributes.has_key?(:'ShippingAddress')
        self.shipping_address = attributes[:'ShippingAddress']
      end

      if attributes.has_key?(:'ExtraData')
        if (value = attributes[:'ExtraData']).is_a?(Hash)
          self.extra_data = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@phone.nil? && @phone.to_s.length > 20
        invalid_properties.push("invalid value for 'phone', the character length must be smaller than or equal to 20.")
      end

      if !@phone.nil? && @phone.to_s.length < 0
        invalid_properties.push("invalid value for 'phone', the character length must be great than or equal to 0.")
      end

      if @email.nil?
        invalid_properties.push("invalid value for 'email', email cannot be nil.")
      end

      if @email.to_s.length > 250
        invalid_properties.push("invalid value for 'email', the character length must be smaller than or equal to 250.")
      end

      if @email.to_s.length < 0
        invalid_properties.push("invalid value for 'email', the character length must be great than or equal to 0.")
      end

      if !@company_registration_no.nil? && @company_registration_no.to_s.length > 50
        invalid_properties.push("invalid value for 'company_registration_no', the character length must be smaller than or equal to 50.")
      end

      if !@company_registration_no.nil? && @company_registration_no.to_s.length < 0
        invalid_properties.push("invalid value for 'company_registration_no', the character length must be great than or equal to 0.")
      end

      if !@vat_no.nil? && @vat_no.to_s.length > 50
        invalid_properties.push("invalid value for 'vat_no', the character length must be smaller than or equal to 50.")
      end

      if !@vat_no.nil? && @vat_no.to_s.length < 0
        invalid_properties.push("invalid value for 'vat_no', the character length must be great than or equal to 0.")
      end

      if @payment_method.nil?
        invalid_properties.push("invalid value for 'payment_method', payment_method cannot be nil.")
      end

      if @payment_method.to_s.length > 50
        invalid_properties.push("invalid value for 'payment_method', the character length must be smaller than or equal to 50.")
      end

      if @payment_method.to_s.length < 0
        invalid_properties.push("invalid value for 'payment_method', the character length must be great than or equal to 0.")
      end

      if @shipping_costs_incl_vat.nil?
        invalid_properties.push("invalid value for 'shipping_costs_incl_vat', shipping_costs_incl_vat cannot be nil.")
      end

      if @currency_code.nil?
        invalid_properties.push("invalid value for 'currency_code', currency_code cannot be nil.")
      end

      if @order_date.nil?
        invalid_properties.push("invalid value for 'order_date', order_date cannot be nil.")
      end

      if !@channel_customer_no.nil? && @channel_customer_no.to_s.length > 50
        invalid_properties.push("invalid value for 'channel_customer_no', the character length must be smaller than or equal to 50.")
      end

      if !@channel_customer_no.nil? && @channel_customer_no.to_s.length < 0
        invalid_properties.push("invalid value for 'channel_customer_no', the character length must be great than or equal to 0.")
      end

      if @billing_address.nil?
        invalid_properties.push("invalid value for 'billing_address', billing_address cannot be nil.")
      end

      if @shipping_address.nil?
        invalid_properties.push("invalid value for 'shipping_address', shipping_address cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      channel_order_support_validator = EnumAttributeValidator.new('String', ["NONE", "ORDERS", "SPLIT_ORDERS", "SPLIT_ORDER_LINES"])
      return false unless channel_order_support_validator.valid?(@channel_order_support)
      status_validator = EnumAttributeValidator.new('String', ["IN_PROGRESS", "SHIPPED", "IN_BACKORDER", "CANCELED", "MANCO", "IN_COMBI", "CLOSED", "NEW", "RETURNED", "REQUIRES_CORRECTION"])
      return false unless status_validator.valid?(@status)
      return false if !@phone.nil? && @phone.to_s.length > 20
      return false if !@phone.nil? && @phone.to_s.length < 0
      return false if @email.nil?
      return false if @email.to_s.length > 250
      return false if @email.to_s.length < 0
      return false if !@company_registration_no.nil? && @company_registration_no.to_s.length > 50
      return false if !@company_registration_no.nil? && @company_registration_no.to_s.length < 0
      return false if !@vat_no.nil? && @vat_no.to_s.length > 50
      return false if !@vat_no.nil? && @vat_no.to_s.length < 0
      return false if @payment_method.nil?
      return false if @payment_method.to_s.length > 50
      return false if @payment_method.to_s.length < 0
      return false if @shipping_costs_incl_vat.nil?
      return false if @currency_code.nil?
      return false if @order_date.nil?
      return false if !@channel_customer_no.nil? && @channel_customer_no.to_s.length > 50
      return false if !@channel_customer_no.nil? && @channel_customer_no.to_s.length < 0
      return false if @billing_address.nil?
      return false if @shipping_address.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] channel_order_support Object to be assigned
    def channel_order_support=(channel_order_support)
      validator = EnumAttributeValidator.new('String', ["NONE", "ORDERS", "SPLIT_ORDERS", "SPLIT_ORDER_LINES"])
      unless validator.valid?(channel_order_support)
        fail ArgumentError, "invalid value for 'channel_order_support', must be one of #{validator.allowable_values}."
      end
      @channel_order_support = channel_order_support
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["IN_PROGRESS", "SHIPPED", "IN_BACKORDER", "CANCELED", "MANCO", "IN_COMBI", "CLOSED", "NEW", "RETURNED", "REQUIRES_CORRECTION"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)

      if !phone.nil? && phone.to_s.length > 20
        fail ArgumentError, "invalid value for 'phone', the character length must be smaller than or equal to 20."
      end

      if !phone.nil? && phone.to_s.length < 0
        fail ArgumentError, "invalid value for 'phone', the character length must be great than or equal to 0."
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, "email cannot be nil"
      end

      if email.to_s.length > 250
        fail ArgumentError, "invalid value for 'email', the character length must be smaller than or equal to 250."
      end

      if email.to_s.length < 0
        fail ArgumentError, "invalid value for 'email', the character length must be great than or equal to 0."
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] company_registration_no Value to be assigned
    def company_registration_no=(company_registration_no)

      if !company_registration_no.nil? && company_registration_no.to_s.length > 50
        fail ArgumentError, "invalid value for 'company_registration_no', the character length must be smaller than or equal to 50."
      end

      if !company_registration_no.nil? && company_registration_no.to_s.length < 0
        fail ArgumentError, "invalid value for 'company_registration_no', the character length must be great than or equal to 0."
      end

      @company_registration_no = company_registration_no
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_no Value to be assigned
    def vat_no=(vat_no)

      if !vat_no.nil? && vat_no.to_s.length > 50
        fail ArgumentError, "invalid value for 'vat_no', the character length must be smaller than or equal to 50."
      end

      if !vat_no.nil? && vat_no.to_s.length < 0
        fail ArgumentError, "invalid value for 'vat_no', the character length must be great than or equal to 0."
      end

      @vat_no = vat_no
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method Value to be assigned
    def payment_method=(payment_method)
      if payment_method.nil?
        fail ArgumentError, "payment_method cannot be nil"
      end

      if payment_method.to_s.length > 50
        fail ArgumentError, "invalid value for 'payment_method', the character length must be smaller than or equal to 50."
      end

      if payment_method.to_s.length < 0
        fail ArgumentError, "invalid value for 'payment_method', the character length must be great than or equal to 0."
      end

      @payment_method = payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] channel_customer_no Value to be assigned
    def channel_customer_no=(channel_customer_no)

      if !channel_customer_no.nil? && channel_customer_no.to_s.length > 50
        fail ArgumentError, "invalid value for 'channel_customer_no', the character length must be smaller than or equal to 50."
      end

      if !channel_customer_no.nil? && channel_customer_no.to_s.length < 0
        fail ArgumentError, "invalid value for 'channel_customer_no', the character length must be great than or equal to 0."
      end

      @channel_customer_no = channel_customer_no
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          channel_name == o.channel_name &&
          channel_order_support == o.channel_order_support &&
          channel_order_no == o.channel_order_no &&
          status == o.status &&
          sub_total_incl_vat == o.sub_total_incl_vat &&
          sub_total_vat == o.sub_total_vat &&
          shipping_costs_vat == o.shipping_costs_vat &&
          total_incl_vat == o.total_incl_vat &&
          total_vat == o.total_vat &&
          original_sub_total_incl_vat == o.original_sub_total_incl_vat &&
          original_sub_total_vat == o.original_sub_total_vat &&
          original_shipping_costs_incl_vat == o.original_shipping_costs_incl_vat &&
          original_shipping_costs_vat == o.original_shipping_costs_vat &&
          original_total_incl_vat == o.original_total_incl_vat &&
          original_total_vat == o.original_total_vat &&
          lines == o.lines &&
          phone == o.phone &&
          email == o.email &&
          company_registration_no == o.company_registration_no &&
          vat_no == o.vat_no &&
          payment_method == o.payment_method &&
          shipping_costs_incl_vat == o.shipping_costs_incl_vat &&
          currency_code == o.currency_code &&
          order_date == o.order_date &&
          channel_customer_no == o.channel_customer_no &&
          billing_address == o.billing_address &&
          shipping_address == o.shipping_address &&
          extra_data == o.extra_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, channel_name, channel_order_support, channel_order_no, status, sub_total_incl_vat, sub_total_vat, shipping_costs_vat, total_incl_vat, total_vat, original_sub_total_incl_vat, original_sub_total_vat, original_shipping_costs_incl_vat, original_shipping_costs_vat, original_total_incl_vat, original_total_vat, lines, phone, email, company_registration_no, vat_no, payment_method, shipping_costs_incl_vat, currency_code, order_date, channel_customer_no, billing_address, shipping_address, extra_data].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ChannelEngineMerchantApiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
