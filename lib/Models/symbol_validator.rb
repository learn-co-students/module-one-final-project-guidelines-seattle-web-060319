def valid_symbol?(symbol)
    url = "https://financialmodelingprep.com/api/v3/company/profile/#{symbol}"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
    if response_hash.has_key?("Error")
        return false
    else
        return true
    end
end