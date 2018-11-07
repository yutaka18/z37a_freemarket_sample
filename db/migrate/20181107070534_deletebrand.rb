class Deletebrand < ActiveRecord::Migration[5.1]
  def change
  	drop_table:brands
  end
end
