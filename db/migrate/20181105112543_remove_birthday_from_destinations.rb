class RemoveBirthdayFromDestinations < ActiveRecord::Migration[5.1]
  def change
    remove_column :destinations, :birthday, :date
  end
end
