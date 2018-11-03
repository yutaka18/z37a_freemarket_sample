class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :item, null: false, foreign_key: true
      t.string :image_url, null: false, default: ""
      t.timestamps
    end
  end
end
