class UnitsController < ApplicationController
  before_action :authenticate_user!, only: [ :create, :new]
  before_action :set_shop, only: [:new, :create]

  def index
    @units = policy_scope(Unit)
  end

  def new
    @unit = Unit.new
    authorize @unit
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.shop = @shop
    authorize @unit
    if @unit.save
      redirect_to shop_units_path, notice: "Unit added successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @unit = Unit.find(params[:unit_id])
  end

  private

  def unit_params
    params.require(:unit).permit(:price, :description)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
