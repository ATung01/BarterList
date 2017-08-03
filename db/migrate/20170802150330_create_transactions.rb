class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.integer :user_id
      t.integer :buyer_id
      t.integer :user_item_id
      t.integer :buyer_item_id
      t.boolean :accepted, :default => false


      t.timestamps
    end
  end
end
