class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @booking = Booking.new
    @shop = Shop.find(params[:shop_id])
    @unit = Unit.find(params[:unit_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @shop = Shop.find(params[:shop_id])
    @unit = Unit.find(params[:unit_id])
    @booking.user = current_user
    @booking.shop_id = @shop.id
    @booking.unit = @unit
    authorize @booking
    if @booking.save
      redirect_to shop_unit_booking_pay_path(@shop, @unit, @booking), notice: "Booking was created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def pay
    @booking = Booking.find(params[:booking_id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
