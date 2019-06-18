<<<<<<< HEAD
class CreateStocks < ActiveRecord[5.2]
=======
class CreateStocks < ActiveRecord::Migration[5.0]
>>>>>>> eaf22da3b99b7ebdeef8659b4bd1e5d9972465e7
    def change
        create_table :stocks do |t|
            t.string :name
            t.string :symbol
            t.float :price
            t.float :open_price
            t.float :previous_close_price
        end
    end
end
