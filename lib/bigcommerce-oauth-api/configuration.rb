require 'faraday'

module BigcommerceOAuthAPI
  module Configuration

    VALID_OPTIONS_KEYS = [
        :store_hash,
        :endpoint,
        :adapter,
        :client_id,
        :access_token,
        :format,
        # legacy authentication
        :user_name,
        :api_key
    ].freeze

    DEFAULT_STORE_HASH = nil
    DEFAULT_ENDPOINT = 'https://api.bigcommerce.com/stores'.freeze
    DEFAULT_CLIENT_ID = nil
    DEFAULT_ACCESS_TOKEN = nil
    DEFAULT_FORMAT = :json
    DEFAULT_ADAPTER = Faraday.default_adapter
    DEFAULT_USER_NAME = nil
    DEFAULT_API_KEY = nil

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def reset
      self.store_hash = DEFAULT_STORE_HASH
      self.endpoint = DEFAULT_ENDPOINT
      self.format = DEFAULT_FORMAT
      self.client_id = DEFAULT_CLIENT_ID
      self.access_token = DEFAULT_ACCESS_TOKEN
      self.adapter = DEFAULT_ADAPTER
      self.user_name = DEFAULT_USER_NAME
      self.api_key = DEFAULT_API_KEY
    end

    def configure
      yield self
    end

    # Return the configuration values set in this module
    def options
      Hash[ * VALID_OPTIONS_KEYS.map { |key| [key, send(key)] }.flatten ]
    end
  end
end