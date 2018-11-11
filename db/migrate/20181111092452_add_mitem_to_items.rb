class AddMitemToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :mitem, foreign_key: true
  end
end
