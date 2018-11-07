class ChangeDatatypeCategorySmallIdOfItems < ActiveRecord::Migration[5.1]
  def change
    change_column_null :items, :category_small_id, true
  end
end