def biggest_negative_movers
    url = "https://financialmodelingprep.com/api/v3/stock/losers"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)

    response_hash["mostGainerStock"]
end