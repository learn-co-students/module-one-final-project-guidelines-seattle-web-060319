
require 'json'
require 'pry'
require 'net/http'

word = small #we need to tie this to the word pool

x = RestClient.get(https://od-api.oxforddictionaries.com/api/v2/entries/en-gb/+word?strictMatch=false, headers={app_id ="ce9c707e" app_key = "bb1b3f7c5a8edc93aba9be741f039537"})
y = JSON.parse(x)