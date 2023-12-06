# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Boat.destroy_all
User.destroy_all


test = User.create! (
  email: "test@tester",
  password: "test@tester",
  first_name: "Test",
  last_name: "Tester"
)


shop = Shop.create! (
  title: "Hobb's Shop",
  text: "We are a beautiful shop",
  user: test
)

unit = Unit.create! (
  price: 400,
  description: "Surfboard",
  available: true,
  shop: shop
)

booking = Booking.create! (
  unit: unit,
  user: test,
  start_date: "12-12-2023",
  end_date: "14-12-2023"
)
