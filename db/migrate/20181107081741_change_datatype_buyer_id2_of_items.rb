class ChangeDatatypeBuyerId2OfItems < ActiveRecord::Migration[5.1]
  def change
  	change_column :items, :buyer_id, :integer
    change_column_null :items, :buyer_id, true
  end
end
