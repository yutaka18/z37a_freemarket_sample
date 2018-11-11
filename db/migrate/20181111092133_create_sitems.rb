class CreateSitems < ActiveRecord::Migration[5.1]
  def change
    create_table :sitems do |t|
      t.string :name
      t.timestamps
    end
  end
end
