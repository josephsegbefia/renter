class UnitsController < ApplicationController
  before_action :set_shop, only: [:new, :create]

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.shop_id = @shop.id
    if @unit.save
      redirect_to @shop, notice: "Unit added successfully"
    else
      render :new, status: :unprocessable_entity
    end

    def show
      @units = Unit.all
    end
  end


  private

  def unit_params
    params.require(:unit).permit(:price, :description)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
