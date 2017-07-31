class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.datetime :transaction
      t.integer :transaction_rating
      t.integer :user_id
      t.integer :item_id
      #item_id should NOT be auto generated, is assigned when transaction happens.

      t.timestamps
    end
  end
end
