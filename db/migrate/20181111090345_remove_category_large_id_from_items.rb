class RemoveCategoryLargeIdFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :category_large_id, :integer
  end
end
