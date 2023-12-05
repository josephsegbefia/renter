class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @shop = Shop.find(params[:shop_id])
    @unit = Unit.find(params[:unit_id])
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @shop = Shop.find(params[:id])
    @unit = Unit.find(params[:id])
    @booking.user = current_user
    @booking.shop = @shop
    @booking.unit = @unit.id
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
