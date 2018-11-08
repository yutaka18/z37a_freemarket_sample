class ItemsController < ApplicationController
  def new
    @item = Item.new
    @item.images.build
    @categories = Category.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to action: :new, notice: '商品を出品しました'
    else
      redirect_to action: :new, alert: '必須項目を入力してください'
    end
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
      :brand,
      :burden,
      :shipping_method,
      :from_prefecture,
      :shipping_days,
      images_attributes: [:id, :image_url]
      ).merge(user_id: 1)
  end

end
