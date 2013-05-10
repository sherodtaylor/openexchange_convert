require 'spec_helper'
describe OpenexchangeConvert::ConvertCurrency do
  before do
    @convert = OpenexchangeConvert::ConvertCurrency.new("1c4a7b48db7148ebbfccdf5f072f5ae7")
  end

  it 'should be able to pass a integer into amount' do
    @convert.convert_to_usd("eur", 10).should_not be_nil
  end

  it 'should be able to pass a string into amount' do
    @convert.convert_to_usd("eur", "10").should_not be_nil
  end

  it 'should be able to get the British Pound Rate' do
    @convert.get_exchange_rate("gbp").should_not be_nil
  end

  it 'should be able to get all exchange rates' do
    @convert.get_all_exchange_rates.should_not be_nil
  end

  it 'should be able to handle lowercase currency name' do
    lowercase = @convert.get_exchange_rate('eur')
    lowercase.should_not be_nil
  end

  it 'should be able to convert euros to dollars' do
    (5 * (1 / @convert.get_exchange_rate('EUR'))).should eq @convert.convert_to_usd('EUR', 5)
  end

  it 'should be able to convert dollars to euros' do
    (@convert.get_exchange_rate('EUR') * 5).should eq @convert.convert_to_foreign("EUR", "5")
  end
end
