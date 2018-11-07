class ChangeDatatypeBuyerIdOfItems < ActiveRecord::Migration[5.1]
  def change
  	change_column :items, :buyer_id, :integer, default: 0
  end
end
