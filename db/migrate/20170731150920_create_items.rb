class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :posted?, :default => 'no'
      t.string :ok_to_trade?, :default => 'no'
      t.integer :user_id


      t.timestamps
    end
  end
end
