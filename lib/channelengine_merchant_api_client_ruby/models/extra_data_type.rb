=begin
#ChannelEngine Merchant API

#ChannelEngine API for merchants

The version of the OpenAPI document: 2.9.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'

module ChannelEngineMerchantApiClient
  class ExtraDataType
    TEXT = "TEXT".freeze
    NUMBER = "NUMBER".freeze
    URL = "URL".freeze
    IMAGEURL = "IMAGEURL".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ExtraDataType.constants.select { |c| ExtraDataType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ExtraDataType" if constantValues.empty?
      value
    end
  end
end
