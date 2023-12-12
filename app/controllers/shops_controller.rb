class ShopsController < ApplicationController
  def index
    @shops = policy_scope(Shop)
  end

  def new
    @shop = Shop.new
    authorize @shop
  end

  def show
    @shop = Shop.find(params[:id])
    authorize @shop
    @units = Unit.all
  end

  def create
    @shop = Shop.new(shop_params)
    # The user of the shop to create is the current user
    @shop.user = current_user
    authorize @shop
    @shop.save
    redirect_to shop_path(@shop)
  end


  private

  def shop_params
    params.require(:shop).permit(:title, :description, :photo)
  end
end
