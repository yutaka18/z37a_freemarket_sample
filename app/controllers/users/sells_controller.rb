class Users::SellsController < ApplicationController

  before_action :set_user

  def show
    # @items = Item.find(params[:item_id])
  end

  def edit

  end

  private

  # def set_item
  #   @items = Item.find(params[:item_id])
  # end

  def set_user
    @user = User.find(current_user.id)
  end

end
