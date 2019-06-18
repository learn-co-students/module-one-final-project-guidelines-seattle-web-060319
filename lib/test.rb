require 'rest-client'
require 'pry'
require 'similar_text'

url = "https://financialmodelingprep.com/api/v3/stock/real-time-price"
response_string = RestClient.get(url)
response_hash = JSON.parse(response_string)



def find_price_by_symbol(symbol, hash)

    aapl = hash["stockList"].select do |stock|
        stock["symbol"] == symbol
    end
end

def find_similarity_by_symbol(hash, symbol)
    hash["stockList"].select do |stock|
        stock["symbol"].similar(symbol) >= 75.0
    end
end

Pry.start