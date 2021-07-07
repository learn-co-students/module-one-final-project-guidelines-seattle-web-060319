require 'Nokogiri'
require "HTTParty"
require "pry"



class Scraper
    attr_accessor :parse_page

  def initialize
    doc = HTTParty.get("https://satvocabulary.us/")
    @parse_page ||= Nokogiri::HTML(doc)
  end

  def item_container
    parse_page.css(".WORDLIST").children()
  end

  def get_words
    item_container.css("b").map{|item| item.text}.compact
  end
end
