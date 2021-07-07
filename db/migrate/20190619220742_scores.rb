class Scores < ActiveRecord::Migration[5.2]
  belongs_to :user
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :user_id 
    end
  end
end
