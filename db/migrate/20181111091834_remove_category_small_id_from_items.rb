class RemoveCategorySmallIdFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :category_small_id, :integer
  end
end
