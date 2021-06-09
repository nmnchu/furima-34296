class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :nickname, null: false
      t.integer :price, null: false
      t.text :text, null: false
      t.integer :category_id, null: false
      t.integer :status_id, null: false
      t.string :user, foreign_key: true
      t.integer :shipping_day_id, null: false
      t.integer :prefecture_id, null: false
      t.timestamps
    end
  end
end