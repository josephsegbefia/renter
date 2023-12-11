class DashboardController < ApplicationController
  def index
    @shops = policy_scope(Shop)
    @bookings = policy_scope(Booking)
    @shop = Shop.new

    @user = current_user
    @bookings = @user.bookings

    sorted_bookings = @bookings.sort_by { |booking| booking.start_date }
    @next_booking = sorted_bookings.find { |booking| booking.start_date > Date.today }
  end
end
