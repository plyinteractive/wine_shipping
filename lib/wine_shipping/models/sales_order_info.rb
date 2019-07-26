=begin
#API from Wineshipping

#Wineshipping API is a programmatically consumable service or an Application Programming Interface (API) platform designed to enable Wineshipping LLC's client applications to natively transmit and manage their order, view inventory, track shipments etc.<br /><br />In order to access API operations request a UserKey and Password from Wineshipping. For any questions please contact Wineshipping Helpdesk at <a href='mailto:IT-Help@wineshipping.com?Subject=API from Wineshipping'>IT-Help@wineshipping.com</a>.

OpenAPI spec version: V3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module WineShipping
  class SalesOrderInfo
    attr_accessor :transmission_id

    attr_accessor :batch_id

    attr_accessor :batch_description

    attr_accessor :order_no

    attr_accessor :po_no

    attr_accessor :shipment_key

    attr_accessor :order_type

    attr_accessor :order_source

    attr_accessor :order_date

    attr_accessor :gift_card

    attr_accessor :gift_card_message

    attr_accessor :tags

    attr_accessor :special_instructions

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
        :'transmission_id' => :'TransmissionId',
        :'batch_id' => :'BatchId',
        :'batch_description' => :'BatchDescription',
        :'order_no' => :'OrderNo',
        :'po_no' => :'PONo',
        :'shipment_key' => :'ShipmentKey',
        :'order_type' => :'OrderType',
        :'order_source' => :'OrderSource',
        :'order_date' => :'OrderDate',
        :'gift_card' => :'GiftCard',
        :'gift_card_message' => :'GiftCardMessage',
        :'tags' => :'Tags',
        :'special_instructions' => :'SpecialInstructions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'transmission_id' => :'String',
        :'batch_id' => :'String',
        :'batch_description' => :'String',
        :'order_no' => :'String',
        :'po_no' => :'String',
        :'shipment_key' => :'String',
        :'order_type' => :'String',
        :'order_source' => :'String',
        :'order_date' => :'DateTime',
        :'gift_card' => :'Integer',
        :'gift_card_message' => :'String',
        :'tags' => :'String',
        :'special_instructions' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'TransmissionId')
        self.transmission_id = attributes[:'TransmissionId']
      end

      if attributes.has_key?(:'BatchId')
        self.batch_id = attributes[:'BatchId']
      end

      if attributes.has_key?(:'BatchDescription')
        self.batch_description = attributes[:'BatchDescription']
      end

      if attributes.has_key?(:'OrderNo')
        self.order_no = attributes[:'OrderNo']
      end

      if attributes.has_key?(:'PONo')
        self.po_no = attributes[:'PONo']
      end

      if attributes.has_key?(:'ShipmentKey')
        self.shipment_key = attributes[:'ShipmentKey']
      end

      if attributes.has_key?(:'OrderType')
        self.order_type = attributes[:'OrderType']
      end

      if attributes.has_key?(:'OrderSource')
        self.order_source = attributes[:'OrderSource']
      end

      if attributes.has_key?(:'OrderDate')
        self.order_date = attributes[:'OrderDate']
      end

      if attributes.has_key?(:'GiftCard')
        self.gift_card = attributes[:'GiftCard']
      end

      if attributes.has_key?(:'GiftCardMessage')
        self.gift_card_message = attributes[:'GiftCardMessage']
      end

      if attributes.has_key?(:'Tags')
        self.tags = attributes[:'Tags']
      end

      if attributes.has_key?(:'SpecialInstructions')
        self.special_instructions = attributes[:'SpecialInstructions']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      gift_card_validator = EnumAttributeValidator.new('Integer', ['0', '1'])
      return false unless gift_card_validator.valid?(@gift_card)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gift_card Object to be assigned
    def gift_card=(gift_card)
      validator = EnumAttributeValidator.new('Integer', ['0', '1'])
      unless validator.valid?(gift_card)
        fail ArgumentError, 'invalid value for "gift_card", must be one of #{validator.allowable_values}.'
      end
      @gift_card = gift_card
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transmission_id == o.transmission_id &&
          batch_id == o.batch_id &&
          batch_description == o.batch_description &&
          order_no == o.order_no &&
          po_no == o.po_no &&
          shipment_key == o.shipment_key &&
          order_type == o.order_type &&
          order_source == o.order_source &&
          order_date == o.order_date &&
          gift_card == o.gift_card &&
          gift_card_message == o.gift_card_message &&
          tags == o.tags &&
          special_instructions == o.special_instructions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [transmission_id, batch_id, batch_description, order_no, po_no, shipment_key, order_type, order_source, order_date, gift_card, gift_card_message, tags, special_instructions].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        temp_model = WineShipping.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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