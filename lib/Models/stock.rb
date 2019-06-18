class Stock < ActiveRecord::Base
<<<<<<< HEAD
    has_many :users, through: :portfolio
=======
    has_many :portfolios
    has_many :users, through: :portfolios
    
>>>>>>> 434e0a462a5e797541089690098d0fac80d31b28
end
