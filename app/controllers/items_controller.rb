class ItemsController < ApplicationController
  def new
    @item = Item.new
    @item.images.build
    @categories = Category.all
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end

  def buy
  end

  private
  def item_params
    params.require(:item).permit(
      :name,
      :content,
      :price,
      :condition,
      :size,
      :category_large_id,
      :category_medium_id,
      :category_small_id,
      :brand_id,
      :burden,
      :shipping_method,
      :from_prefecture,
      :shipping_days,
      :buyer_id,
      :user_id,
      images_attributes: [:id, :image_url]
      ).merge(user_id: 1,buyer_id: 0)
  end

end
