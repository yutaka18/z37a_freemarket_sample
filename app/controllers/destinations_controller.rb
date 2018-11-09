class DestinationsController < ApplicationController

  before_action :set_user

  def new
    if user_signed_in? && @user.id == current_user.id
      @destination = Destination.new
    else
      redirect_to :root
    end
  end

  def create
    @destination = Destination.new(destinations_params)
    if @destination.save
      redirect_to :root
    else
      render 'new'
    end
  end


  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def destinations_params
    params.require(:destination).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :city, :post_number, :prefecture, :building, :address).merge(user_id: current_user.id)
  end
end
