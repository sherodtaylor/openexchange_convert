require 'json'
require 'open-uri'
module OpenexchangeConvert
  class Rates
    def initialize
      @base_rate = 1
      @results = 0
      @api_key = OpenexchangeConvert.configuration.api_key
      @base = OpenexchangeConvert.configuration.base
    end

    def get_all_exchange_rates
      binding.pry
     @file = open("http://openexchangerates.org/api/latest.json?app_id=#{@api_key}&#{@base}")
     @j = JSON.load(@file.read)
     @current_currency = @j['rates']
    end

    def get_exchange_rate(currency_type)
      all_rates = get_all_exchange_rates
      all_rates[currency_type.upcase]
    end

    def convert_to_base_rate(currency, amount)
     foreign = get_exchange_rate(currency)
     @results = (amount.to_i * (@base_rate / foreign))
    end

    def convert_to_foreign(currency, amount)
     foreign = get_exchange_rate(currency)
     @results = foreign * (amount.to_i * @base_rate)
    end
  end
end
