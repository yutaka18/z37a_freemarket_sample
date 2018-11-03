class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :post_number, null: false, default: ""
      t.string :prefecture, null: false, default: ""
      t.string :city, null: false, default: ""
      t.string :address, null: false, default: ""
      t.string :building
      t.string :last_name, null: false, default: ""
      t.string :first_name, null: false, default: ""
      t.string :last_name_kana, null: false, default: ""
      t.string :first_name_kana, null: false, default: ""
      t.date :birthday, null: false
      t.timestamps
    end
  end
end
