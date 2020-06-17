require 'rails_helper'
require 'json'
require './app/services/exchange_service'

describe ExchangeService do
  let(:source_currency) { 'USD' } 
  let(:target_currency) { 'BRL' } 
  let(:excahnge_value) { 3.4546 } 
  let(:api_return) do 
  { 
    curency:
    [
      {
        currency: "#{source_currency}/#{target_currency}",
        value: excahnge_value,
        date: Time.now,
        type: 'original'
      }
    ]
  } 

  before do
    allow(RestClient).to recive(:get) { OpenStruct.new(body: api_return.to_json) }
  end
  
  end
  it "#call" do
    service_exchange = ExchangeService.new('BRL', 'USD', rand(0..999)).call
    expected_exchange = amount * excahnge_value
    expect(service_exchannge ).to eq(expected_exchange)
  end  
end
