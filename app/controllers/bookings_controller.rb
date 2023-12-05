class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @shop = Shop.find(params[:id])
    @unit = Unit.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @shop = Shop.find(params[:id])
    @unit = Unit.find(params[:id])
    @booking.user = current_user
    @booking.shop_id = @shop.id
    @booking.unit_id = @unit.id
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
