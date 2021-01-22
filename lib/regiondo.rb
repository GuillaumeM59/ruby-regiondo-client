# frozen_string_literal: true

require_relative "regiondo/version"
require_relative "regiondo/product"
# require_relative "regiondo/product_details"
# require_relative "regiondo/cart"
# require_relative "regiondo/purchase"
# require_relative "regiondo/control"
require "http"

module Regiondo
  class Error < StandardError; end

  class Client
    # include

    def initialize( regiondo_base_url, api_key)
      @base_url         = regiondo_base_url
      @regiondo_api_key = api_key
    end

    def self.version
      Regiondo::VERSION
    end
  end
end
