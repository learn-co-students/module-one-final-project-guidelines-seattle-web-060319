class StockFromSymbol

    attr_reader :symbol, :price, :name, :day_change, :sector, :open_price

    def initialize(symbol)
        @symbol = symbol.upcase
        response_hash = stock_profile(symbol)
        Stock.create(name: @name, symbol: @symbol, price: @price, open_price: @open_price, day_change: @day_change, sector: @sector)
    end




    def stock_profile(symbol)
        url = "https://financialmodelingprep.com/api/v3/company/profile/#{@symbol}"
        response_string = RestClient.get(url)
        response_hash = JSON.parse(response_string)
        if response_hash.has_key?("Error")
            return "#{@symbol} is an invalid Symbol"
        else
            @price = response_hash["profile"]["price"]
            @name = response_hash["profile"]["companyName"]
            @day_change = response_hash["profile"]["changes"]
            @sector = response_hash["profile"]["sector"]
            @open_price = get_open_price(symbol)
        end
    end

    def get_open_price(symbol)
        current_date = DateTime.now
        current_date.strftime "%Y-%m-%d".to_s
        yesterday_date = Date.today.prev_day
        yesterday_date.strftime "%Y-%m-%d".to_s
        url = "https://financialmodelingprep.com/api/v3/historical-price-full/#{symbol}?from=#{yesterday_date}to=#{current_date}"
        response_string = RestClient.get(url)
        response_hash = JSON.parse(response_string)
        response_hash["historical"][0]["open"]
    end











end
