class DestinationsController < ApplicationController

  def new
    @destination = Destination.new
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


	def destinations_params
    params.require(:destination).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :city, :post_number, :prefecture, :building, :address).merge(user_id: current_user.id)
  end
end
