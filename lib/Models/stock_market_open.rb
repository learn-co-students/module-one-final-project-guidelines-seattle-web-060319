def market_open?
    url = "https://financialmodelingprep.com/api/v3/is-the-market-open"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)

    response_hash["isTheStockMarketOpen"]
end