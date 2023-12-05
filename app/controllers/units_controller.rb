class UnitsController < ApplicationController
  before_action :set_shop, only: [:new, :create]

  def index
    @units = Unit.all
  end
  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.shop = @shop
    if @unit.save
      redirect_to shop_units_path, notice: "Unit added successfully"
    else
      render :new, status: :unprocessable_entity
    end

    def show
      @unit = Unit.find(params[:id])
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
