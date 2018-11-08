class Category < ApplicationRecord
  belongs_to :item
	# belongs_to :category_large_id, class_name: "Item"
 #  belongs_to :category_medium_id, class_name: "Item"
 #  belongs_to :category_small_id, class_name: "Item"
end
