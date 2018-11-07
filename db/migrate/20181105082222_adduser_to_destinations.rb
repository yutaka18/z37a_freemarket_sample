class AdduserToDestinations < ActiveRecord::Migration[5.1]
  def change
  	add_reference :destinations, :user, null: false
  end
end
