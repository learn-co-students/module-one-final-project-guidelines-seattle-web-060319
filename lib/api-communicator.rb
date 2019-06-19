
require 'json'
require 'pry'
require 'net/http'
require '../lib'
require 'hidden'

word - CorrectAns

x = RestClient.get('https://od-api.oxforddictionaries.com/api/v2/entries/en-gb/word?strictMatch=false, headers={app_id ="#{application_id}" app_key = "#{application_keys}"}')
y = JSON.parse(x)

y