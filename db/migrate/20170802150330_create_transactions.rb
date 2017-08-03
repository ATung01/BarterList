class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.integer :transactionrating
      t.integer :user_id
      t.integer :item_id


      t.timestamps
    end
  end
end
