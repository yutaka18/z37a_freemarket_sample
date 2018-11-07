class ChangeDatatypeSizeOfItems < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :size, :string, null: false, index: true, default: ""
  end
end
