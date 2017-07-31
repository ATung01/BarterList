class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.integer :user_id

      t.timestamps
    end
  end
end
