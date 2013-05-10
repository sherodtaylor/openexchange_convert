require "openexchange_convert/version"

module OpenexchangeConvert
  class ConvertCurrency
    def initialize(api_key)
      @usd = 1
      @results = 0
      @api_key = api_key
    end
    def get_exchange_rate(currency_type)
      all_rates = get_all_exchange_rates
      all_rates[currency_type.upcase]
    end

    def get_all_exchange_rates
     @file = open("http://openexchangerates.org/api/latest.json?app_id=#{@api_key}")
     @j = JSON.load(@file.read)
     @current_currency = @j['rates']
    end

    def convert_to_usd(currency, amount)
     foreign = get_exchange_rate(currency)
     @results = (amount.to_i * (@usd / foreign))
    end
    def convert_to_foreign(currency, amount)
     foreign = get_exchange_rate(currency)
     @results = foreign * (amount.to_i * @usd)
    end
  end
end
