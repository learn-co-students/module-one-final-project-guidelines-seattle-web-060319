def biggest_positive_movers
    url = "https://financialmodelingprep.com/api/v3/stock/gainers"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)

    response_hash["mostGainerStock"]
end