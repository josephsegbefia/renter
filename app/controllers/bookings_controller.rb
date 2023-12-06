class BookingsController < ApplicationController

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
    # @booking.shop = @shop
    @booking.unit = @unit
    authorize @booking
    if @booking.save
      redirect_to root_path, notice: "Booking was created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
