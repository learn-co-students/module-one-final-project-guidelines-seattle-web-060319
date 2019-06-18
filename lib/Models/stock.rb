class Stock < ActiveRecord::Base
    belongs_to :user through: :portfolio
end