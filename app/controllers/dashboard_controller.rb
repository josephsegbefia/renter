class DashboardController < ApplicationController
  def index
    @shops = policy_scope(Shop)
    @bookings = policy_scope(Booking)
    @shop = Shop.new
  end
end
