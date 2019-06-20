def stock_history(symbol, num_days)
    url = "https://financialmodelingprep.com/api/v3/historical-price-full/#{symbol}?timeseries=#{num_days}"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
    stock_history_total_change(response_hash)
end

def stock_history_total_change(hash)
    earliest = hash["historical"].first
    latest = hash["historical"].last
    earliest_close = earliest["close"]
    latest_close = latest["close"]
    if latest_close - earliest_close > 0
        increase = latest_close - earliest_close
        percent_change = increase / latest_close
        change_hash = {"first_close" => earliest_close, "current_close" => latest_close, "total_change" => percent_change, "change_percent" => percent_change*100, "change_direction" => "up"}
    else
        decrease = latest_close - earliest_close
        percent_change = decrease / earliest_close
        change_hash = {"first_close" => earliest_close, "current_close" => latest_close, "total_change" => percent_change, "change_percent" => percent_change*100, "change_direction" => "down"}
    end
end
