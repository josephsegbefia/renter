class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
    authorize @shop
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def create
    @shop = Shop.new(shop_params)
    # The user of the shop to create is the current user
    @shop.user = current_user
    authorize @shop
    @shop.save
  end


  private

  def shop_params
    params.require(:shop).permit(:title, :description, :photo)
  end
end
