class ChangeDatatypeCategoryMediumIdOfItems < ActiveRecord::Migration[5.1]
  def change
    change_column_null :items, :category_medium_id, true
  end
end
