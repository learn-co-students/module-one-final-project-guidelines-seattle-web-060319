
#compares the name to the full company list, and returns top 5 companies with closest name match

def company_list
    url = "https://financialmodelingprep.com/api/v3/company/stock/list"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
end

def StockByName(name)
    name = name.titleize
    return_hash = {}
    company_list["symbolsList"].each do |company|
        if company["name"].include?(name)
            return_hash[company["symbol"]] = company["name"]
        elsif company["name"].similar(name) >= 80.0
            return_hash[company["symbol"]] = company["name"]
        elsif company["symbol"].similar(name.upcase) >= 80.0
            return_hash[company["symbol"]] = company["name"]
        elsif company["name"].split(" ")[0].similar(name) >= 80.0
            return_hash[company["symbol"]] = company["name"]
        elsif company["name"].split(" ")[1] && company["name"].split(" ")[1].similar(name) >= 80.0
            return_hash[company["symbol"]] = company["name"]
        elsif company["name"].split(" ")[2] && company["name"].split(" ")[1].similar(name) >= 80.0
            return_hash[company["symbol"]] = company["name"]
        end

    end
    trim(return_hash)
end

#trims the hash to a 5 element array
def trim(hash)
    return_array = []
    if hash.count >= 5
        5.times do 
            return_array << hash.shift
        end
    else
        hash.count.times do
            return_array << hash.shift
        end
    end
    return_array
end

def match_name_full(name)
    name = name.titleize
    return_hash = {}
    company_list["symbolsList"].each do |company|
        if company["name"].include?(name)
            return_hash[company["symbol"]] = company["name"]
        elsif company["name"].similar(name) > 67.0
            return_hash[company["symbol"]] = company["name"]
        elsif company["symbol"].similar(name.upcase) > 75.0
            return_hash[company["symbol"]] = company["name"]
        elsif company["name"].split(" ")[0].similar(name) > 75.0
            return_hash[company["symbol"]] = company["name"]
        end

    end
    return_hash
end

        
