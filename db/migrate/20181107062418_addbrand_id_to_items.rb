class AddbrandIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :brand_id, :string
  end
end
