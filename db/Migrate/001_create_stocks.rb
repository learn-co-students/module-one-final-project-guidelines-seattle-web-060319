class CreateStocks < ActiveRecord::Migration[5.0]
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