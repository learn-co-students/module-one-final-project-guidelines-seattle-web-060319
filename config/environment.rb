require 'bundler'
require 'pry'
require 'colorize'
require 'similar_text'
require 'rest-client'
require_relative '../lib/Models'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
