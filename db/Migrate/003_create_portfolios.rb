class CreatePortfolios < ActiveRecord::Migration[5.0]
    def change
        create_table :portfolios do |t|
            t.integer :user_id
            t.integer :stock_id
        end
    end
end
