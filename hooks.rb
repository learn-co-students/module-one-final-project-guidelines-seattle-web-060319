#Returns an array up to 5 elements of the closest matches to the entered name
    StockByName.match_name(NAME_APPROXIMATION)

#Return TRUE or FALSE depending on whether the input was a valid stock symbol
    valid_symbol?(SYMBOL)

#Returns the stock object associated with the stock symbol given after adding it to the database
    StockFromSymbol.new(STOCK_SYMBOL)

#Returns an array of the 10 biggest gainers of the day
    biggest_positive_movers()

#Returns an array of the 10 biggest losers of the day
    biggest_negative_movers()

#Returns hash of format below, after giving stock symbol, and number of days to go back historically
#{"first_close"=>OLDEST DATE CLOSE VALUE, "current_close"=>CURRENT DATE CLOSE VALUE, "total_change"=> FLOAT CHANGE, "change_percent"=> FLOAT CHANGE * 100 FOR PERCENT, "change_direction"=> "UP" OR "DOWN" DEPENDING ON POSITVE GROWTH OR NEGATIVE GROWTH}
    stock_history(symbol, num_days)