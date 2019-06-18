class Stock < ActiveRecord::Base
  has_many :users through: :portfolio
end
