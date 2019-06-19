require 'bundler'
Bundler.require

require_relative '../lib/models/portfolio.rb'
require_relative '../lib/models/stock_biggest_negative_movers.rb'
require_relative '../lib/models/stock_biggest_positive_movers.rb'
require_relative '../lib/models/stock_by_name.rb'
require_relative '../lib/models/stock_from_symbol.rb'
require_relative '../lib/models/stock_history.rb'
require_relative '../lib/models/stock_market_open.rb'
require_relative '../lib/models/stock_menu_option.rb'
require_relative '../lib/models/stock_update_portfolio_prices.rb'
require_relative '../lib/models/stock.rb'
require_relative '../lib/models/symbol_validator.rb'
require_relative '../lib/models/user_interaction.rb'
require_relative '../lib/models/user.rb'
<<<<<<< HEAD
require_relative '../lib/models/user_login.rb'
=======
require_relative '../lib/models/user_stock_research_menu.rb'
require_relative '../lib/models/login.rb'
>>>>>>> 5d98d2e81d9109191bd28ceff44895a92ed32838

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
