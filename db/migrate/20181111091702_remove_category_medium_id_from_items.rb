class RemoveCategoryMediumIdFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :category_medium_id, :integer
  end
end
