class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name, null: false, index: true
      t.text :content, null: false, limit: 2000
      t.integer :price, null:false,index: true
      t.integer :condition, null:false,index: true
      t.string :size, null:false,index:true
      t.integer :category_large_id, null: false, foreign_key: true
      t.integer :category_medium_id,null: false, foreign_key: true
      t.integer :category_small_id,null: false, foreign_key: true
      t.references :brand,null: false, foreign_key: true
      t.integer :burden, null: false,index: true
      t.integer :shipping_method,null: false
      t.integer :from_prefecture,null: false
      t.integer :shipping_days,null: false
      t.integer :buyer_id,null: false, foreign_key: true
      t.references :user,null: false, foreign_key: true
      t.timestamps
    end
  end
end
