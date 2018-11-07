class AddbuyerIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :buyer_id, :integer
  end
end
