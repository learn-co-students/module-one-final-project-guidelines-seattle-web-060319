class ChangeColumnNameStocks < ActiveRecord::Migration[5.0]
    def change
        rename_column :stocks, :changes, :day_change
    end
end