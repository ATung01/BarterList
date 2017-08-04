class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.boolean :is_post?, :default => false
      t.integer :user_id


      t.timestamps
    end
  end
end
