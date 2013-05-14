require 'rubygems'
require_relative "openexchange_convert/version"
require_relative 'openexchange_convert/configuration'
require_relative 'openexchange_convert/rates'

module OpenexchangeConvert
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= self::Configuration.new
    yield(configuration)
  end

  self.configure do |config|
    config.base = "USD"
  end
  binding.pry
end

