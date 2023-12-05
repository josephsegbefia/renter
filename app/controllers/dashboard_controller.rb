class DashboardController < ApplicationController
  def index
    @shops = policy_scope(Shop)
    @bookings = policy_scope(Booking)
  end
end
