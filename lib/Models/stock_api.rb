class StockFromSymbol

    attr_reader :symbol

    def initialize(symbol)
        @symbol = symbol.upcase
        url = "https://financialmodelingprep.com/api/v3/company/profile/#{@symbol}"
        response_string = RestClient.get(url)
        response_hash = JSON.parse(response_string)
        binding.pry
        if response_hash.has_key?("Error")
            return "#{@symbol} is an invalid Symbol"
        else
            @price = response_hash["profile"]["price"]
            @name = response_hash["profile"]["companyName"]
            @changes = response_hash["profile"]["changes"]
            @sector = response_hash["profile"]["sector"]
        end
        Stock.create(name: @name, symbol: @symbol, price: @price, changes: @changes, sector: @sector)
    end




    def stock_profile(symbol)
        url = "https://financialmodelingprep.com/api/v3/company/profile/#{@symbol}"
        response_string = RestClient.get(url)
        response_hash = JSON.parse(response_string)
    end

    def other_profile

        https://financialmodelingprep.com/api/v3/historical-price-full/AAPL?from=2018-03-12to=2019-03-12










end
