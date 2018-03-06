=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

OpenAPI spec version: 2.6.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module ChannelEngineMerchantApiClient

  class MerchantReturnRequest
    attr_accessor :merchant_order_no

    attr_accessor :merchant_return_no

    attr_accessor :lines

    attr_accessor :id

    attr_accessor :reason

    attr_accessor :customer_comment

    attr_accessor :merchant_comment

    attr_accessor :refund_incl_vat

    attr_accessor :refund_excl_vat

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
        :'merchant_order_no' => :'MerchantOrderNo',
        :'merchant_return_no' => :'MerchantReturnNo',
        :'lines' => :'Lines',
        :'id' => :'Id',
        :'reason' => :'Reason',
        :'customer_comment' => :'CustomerComment',
        :'merchant_comment' => :'MerchantComment',
        :'refund_incl_vat' => :'RefundInclVat',
        :'refund_excl_vat' => :'RefundExclVat'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'merchant_order_no' => :'String',
        :'merchant_return_no' => :'String',
        :'lines' => :'Array<MerchantReturnLineRequest>',
        :'id' => :'Integer',
        :'reason' => :'String',
        :'customer_comment' => :'String',
        :'merchant_comment' => :'String',
        :'refund_incl_vat' => :'Float',
        :'refund_excl_vat' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'MerchantOrderNo')
        self.merchant_order_no = attributes[:'MerchantOrderNo']
      end

      if attributes.has_key?(:'MerchantReturnNo')
        self.merchant_return_no = attributes[:'MerchantReturnNo']
      end

      if attributes.has_key?(:'Lines')
        if (value = attributes[:'Lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'Reason')
        self.reason = attributes[:'Reason']
      end

      if attributes.has_key?(:'CustomerComment')
        self.customer_comment = attributes[:'CustomerComment']
      end

      if attributes.has_key?(:'MerchantComment')
        self.merchant_comment = attributes[:'MerchantComment']
      end

      if attributes.has_key?(:'RefundInclVat')
        self.refund_incl_vat = attributes[:'RefundInclVat']
      end

      if attributes.has_key?(:'RefundExclVat')
        self.refund_excl_vat = attributes[:'RefundExclVat']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @merchant_order_no.nil?
        invalid_properties.push("invalid value for 'merchant_order_no', merchant_order_no cannot be nil.")
      end

      if @merchant_return_no.nil?
        invalid_properties.push("invalid value for 'merchant_return_no', merchant_return_no cannot be nil.")
      end

      if @lines.nil?
        invalid_properties.push("invalid value for 'lines', lines cannot be nil.")
      end

      if !@customer_comment.nil? && @customer_comment.to_s.length > 4001
        invalid_properties.push("invalid value for 'customer_comment', the character length must be smaller than or equal to 4001.")
      end

      if !@customer_comment.nil? && @customer_comment.to_s.length < 0
        invalid_properties.push("invalid value for 'customer_comment', the character length must be great than or equal to 0.")
      end

      if !@merchant_comment.nil? && @merchant_comment.to_s.length > 4001
        invalid_properties.push("invalid value for 'merchant_comment', the character length must be smaller than or equal to 4001.")
      end

      if !@merchant_comment.nil? && @merchant_comment.to_s.length < 0
        invalid_properties.push("invalid value for 'merchant_comment', the character length must be great than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @merchant_order_no.nil?
      return false if @merchant_return_no.nil?
      return false if @lines.nil?
      reason_validator = EnumAttributeValidator.new('String', ["PRODUCT_DEFECT", "PRODUCT_UNSATISFACTORY", "REFUSED", "REFUSED_DAMAGED", "WRONG_ADDRESS", "NOT_COLLECTED", "OTHER"])
      return false unless reason_validator.valid?(@reason)
      return false if !@customer_comment.nil? && @customer_comment.to_s.length > 4001
      return false if !@customer_comment.nil? && @customer_comment.to_s.length < 0
      return false if !@merchant_comment.nil? && @merchant_comment.to_s.length > 4001
      return false if !@merchant_comment.nil? && @merchant_comment.to_s.length < 0
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason)
      validator = EnumAttributeValidator.new('String', ["PRODUCT_DEFECT", "PRODUCT_UNSATISFACTORY", "REFUSED", "REFUSED_DAMAGED", "WRONG_ADDRESS", "NOT_COLLECTED", "OTHER"])
      unless validator.valid?(reason)
        fail ArgumentError, "invalid value for 'reason', must be one of #{validator.allowable_values}."
      end
      @reason = reason
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_comment Value to be assigned
    def customer_comment=(customer_comment)

      if !customer_comment.nil? && customer_comment.to_s.length > 4001
        fail ArgumentError, "invalid value for 'customer_comment', the character length must be smaller than or equal to 4001."
      end

      if !customer_comment.nil? && customer_comment.to_s.length < 0
        fail ArgumentError, "invalid value for 'customer_comment', the character length must be great than or equal to 0."
      end

      @customer_comment = customer_comment
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_comment Value to be assigned
    def merchant_comment=(merchant_comment)

      if !merchant_comment.nil? && merchant_comment.to_s.length > 4001
        fail ArgumentError, "invalid value for 'merchant_comment', the character length must be smaller than or equal to 4001."
      end

      if !merchant_comment.nil? && merchant_comment.to_s.length < 0
        fail ArgumentError, "invalid value for 'merchant_comment', the character length must be great than or equal to 0."
      end

      @merchant_comment = merchant_comment
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_order_no == o.merchant_order_no &&
          merchant_return_no == o.merchant_return_no &&
          lines == o.lines &&
          id == o.id &&
          reason == o.reason &&
          customer_comment == o.customer_comment &&
          merchant_comment == o.merchant_comment &&
          refund_incl_vat == o.refund_incl_vat &&
          refund_excl_vat == o.refund_excl_vat
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [merchant_order_no, merchant_return_no, lines, id, reason, customer_comment, merchant_comment, refund_incl_vat, refund_excl_vat].hash
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
