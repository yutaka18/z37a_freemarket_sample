class AddSitemToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :sitem, foreign_key: true
  end
end
