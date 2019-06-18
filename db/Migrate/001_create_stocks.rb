class CreateStocks < ActiveRecord[5.2]
    def change
        create_table :stocks do |t|
            t.string :name
            t.string :symbol
            t.float :price
            t.float :open_price
            t.float :previous_close_price
    end
end
