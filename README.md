# OpenexchangeConvert
## Description:

OpenexchangeConvert is a simple realtime opensource currency converter.
It's a very simple Gem that can be used in any ruby project just follow
the instructions. It requires an account a free account at
https://openexchangerates.org/ that is the backbone of this realtime
currency converter.

## Installation

Add this line to your application's Gemfile:

    gem 'openexchange_convert'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install openexchange_convert

## Usage
1. Sign up and Get a API key from https://openexchangerates.org/

2. Create a new Object and pass the api key in there like

Example

    convert = OpenexchangeConvert::ConvertCurrency(api_key)


3. Call one of the following methods on that object

Example

    convert = OpenexchangeConvert::ConvertCurrency(api_key)
    convert.convert_to_foreign('EUR', 100) # integer
           or
    convert.convert_to_foreign('EUR', '100') #  string either will return


Methods:

    get_all_exchange_rates
    get_exchange_rate(currencytype)      # string
    convert_to_usd(currency, amount)     # string, amount can be string or integer
    convert_to_foreign(currency, amount) # string, amount can be string or integer
                                    
## TODO ##
1. Exception Handling
2. More Functionality
3. Better testing

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
