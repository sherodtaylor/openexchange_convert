module OpenexchangeConvert
  class Configuration
    attr_accessor :api_key, :base
    def initialize
      @base = 'USD'
      @api_key = ENV['OPEN_EXCHANGE_API']
    end
  end
end
