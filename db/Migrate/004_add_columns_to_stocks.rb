class AddColumnsToStocks < ActiveRecord::Migration[5.0]
    def change
        add_column :stocks, :changes, :float
        add_column :stocks, :sector, :string
    end
end