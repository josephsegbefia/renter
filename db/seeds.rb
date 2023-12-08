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
Unit.destroy_all
Shop.destroy_all
User.destroy_all





eke = User.create!(
  email: "eke@eke.com",
  password: "password",
  first_name: "Ugorji",
  last_name: "Eke",
  nickname: "KingE"
)

joseph = User.create!(
  email: "joseph@joseph.com",
  password: "password",
  first_name: "Joseph",
  last_name: "Segbefia",
  nickname: "KingJ"
)
mounzer = User.create!(
  email: "mounzer@mounzer.com",
  password: "password",
  first_name: "Mounzer",
  last_name: "Majiz",
  nickname: "KingM"
)

chris = User.create!(
  email: "christian@christian.com",
  password: "password",
  first_name: "Christian",
  last_name: "Davidsson",
  nickname: "KingC"
)

shop1 = Shop.create!(
  title: "Eke's Surf shop",
  description: "The Home of the Greatest Surfboards",
  user: eke
)

shop2 = Shop.create!(
  title: "Joseph's Kayak shop",
  description: "The Home of the Greatest Kayaks",
  user: joseph
)

shop3 = Shop.create!(
  title: "Mounzer's Bike shop",
  description: "The Home of the Greatest Bicycles",
  user: mounzer
)


shop4 = Shop.create!(
  title: "Chris's Tent shop",
  description: "The Home of the Greatest Tents",
  user: chris
)


unit1 = Unit.create!(
  price: 100,
  description: "The original Surfboard of Matt Olympia",
  available: true,
  title: "Surfboard 75Z",
  shop: shop1
)


unit2 = Unit.create!(
  price: 100,
  description: "The original Surfboard of Bethany Hamilton",
  available: true,
  title: "Surfboard Hamilton",
  shop: shop1
)
unit3 = Unit.create!(
  price: 100,
  description: "The original Surfboard of Brody",
  available: true,
  title: "Surfboard Brody",
  shop: shop1
)


unit4 = Unit.create!(
  price: 100,
  description: "The original Kayak of Matt Olympia",
  available: true,
  title: "Kayak 75Z",
  shop: shop2
)
unit5 = Unit.create!(
  price: 100,
  description: "The original Kayak of Matt Olympia",
  available: true,
  title: "Kayak 75Z",
  shop: shop2
)
unit6 = Unit.create!(
  price: 100,
  description: "The original Kayak of Matt Olympia",
  available: true,
  title: "Kayak 75Z",
  shop: shop2
)



unit7 = Unit.create!(
  price: 100,
  description: "The original Bike of Matt Olympia",
  available: true,
  title: "Bike 75Z",
  shop: shop3
)

unit8 = Unit.create!(
  price: 100,
  description: "The original Bike of brodius Olympia",
  available: true,
  title: "Bike brodius",
  shop: shop3
)

unit9 = Unit.create!(
  price: 100,
  description: "The original Bike of Elena Olympia",
  available: true,
  title: "Bike Elena",
  shop: shop3
)


unit10 = Unit.create!(
  price: 100,
  description: "The original Tent of Matt Olympia",
  available: true,
  title: "Tent 75Z",
  shop: shop4
)

unit11 = Unit.create!(
  price: 100,
  description: "The original Tent of Elena Olympia",
  available: true,
  title: "Tent Elena",
  shop: shop4
)

unit12 = Unit.create!(
  price: 100,
  description: "The original Tent of Bear Grylls",
  available: true,
  title: "Tent Bear Grylls",
  shop: shop4
)


booking1 = Booking.create!(
  user: eke,
  unit: unit12,
  start_date: "12-12-2023",
  end_date: "13-12-2023"
)

booking2 = Booking.create!(
  user: joseph,
  unit: unit11,
  start_date: "12-12-2023",
  end_date: "13-12-2023"
)

booking2 = Booking.create!(
  user: mounzer,
  unit: unit2,
  start_date: "12-12-2023",
  end_date: "13-12-2023"
)

booking2 = Booking.create!(
  user: chris,
  unit: unit6,
  start_date: "12-12-2023",
  end_date: "13-12-2023"
)



test = User.create!(
  email: "test@tester",
  password: "test@tester",
)


shop = Shop.create!(
  title: "Hobb's Shop",
  description: "We are a beautiful shop",
  user: test
)

unit = Unit.create!(
  price: 400,
  description: "Surfboard",
  available: true,
  shop: shop
)



booking = Booking.create!(
  unit: unit,
  user: test,
  start_date: "12-12-2023",
  end_date: "14-12-2023"
)
