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
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701990157/development/j8yjn2ax81kcj32ekyv3qxo1q8su.jpg")
unit1.photo.attach(io: file, filename: "surfboard.png", content_type: "image/png")
unit1.save


unit2 = Unit.create!(
  price: 100,
  description: "The original Surfboard of Bethany Hamilton",
  available: true,
  title: "Surfboard Hamilton",
  shop: shop1
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701990155/development/fva0vngrhcv8l6zdyz94qr6bkqlr.jpg")
unit2.photo.attach(io: file, filename: "surfboard.png", content_type: "image/png")
unit2.save


unit3 = Unit.create!(
  price: 100,
  description: "The original Surfboard of Brody",
  available: true,
  title: "Surfboard Brody",
  shop: shop1
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701990153/development/5e6df37fc4qhh5d6enhgux26gc5q.jpg")
unit3.photo.attach(io: file, filename: "surfboard.png", content_type: "image/png")
unit3.save


unit4 = Unit.create!(
  price: 100,
  description: "The original Kayak of Matt Olympia",
  available: true,
  title: "Kayak 75Z",
  shop: shop2
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964665/Kayak_on_a_gentle_river_casual_1_yqqrcc.jpg")
unit4.photo.attach(io: file, filename: "kayak.png", content_type: "image/png")
unit4.save

unit5 = Unit.create!(
  price: 100,
  description: "The original Kayak of Matt Olympia",
  available: true,
  title: "Kayak 75Z",
  shop: shop2
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964665/a_blue_kayak_on_a_kayak_stand__eq5yvp.jpg")
unit5.photo.attach(io: file, filename: "kayak.png", content_type: "image/png")
unit5.save

unit6 = Unit.create!(
  price: 100,
  description: "The original Kayak of Matt Olympia",
  available: true,
  title: "Kayak 75Z",
  shop: shop2
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964665/a_blue_kayak_on_a_kayak_stand__4_am0lbj.jpg")
unit4.photo.attach(io: file, filename: "kayak.png", content_type: "image/png")
unit4.save


unit7 = Unit.create!(
  price: 100,
  description: "The original Bike of Matt Olympia",
  available: true,
  title: "Bike 75Z",
  shop: shop3
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964665/Bicycle_on_a_street_casual_pho_2_v7l6zw.jpg")
unit7.photo.attach(io: file, filename: "Bike.png", content_type: "image/png")
unit7.save


unit8 = Unit.create!(
  price: 100,
  description: "The original Bike of brodius Olympia",
  available: true,
  title: "Bike brodius",
  shop: shop3
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964665/Bicycle_on_a_street_casual_pho_1_zgynpl.jpg")
unit8.photo.attach(io: file, filename: "Bike.png", content_type: "image/png")
unit8.save

unit9 = Unit.create!(
  price: 100,
  description: "The original Bike of Elena Olympia",
  available: true,
  title: "Bike Elena",
  shop: shop3
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964665/Bicycle_on_a_street_casual_pho_vz7k4c.jpg")
unit9.photo.attach(io: file, filename: "Bike.png", content_type: "image/png")
unit9.save


unit10 = Unit.create!(
  price: 100,
  description: "The original Tent of Matt Olympia",
  available: true,
  title: "Tent 75Z",
  shop: shop4
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964664/red_Tent_on_green_grass_casual_ip6ouo.jpg")
unit10.photo.attach(io: file, filename: "Bike.png", content_type: "image/png")
unit10.save

unit11 = Unit.create!(
  price: 100,
  description: "The original Tent of Elena Olympia",
  available: true,
  title: "Tent Elena",
  shop: shop4
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964664/Tent_on_green_grass_casual_pho_bt3nnc.jpg")
unit11.photo.attach(io: file, filename: "Bike.png", content_type: "image/png")
unit11.save

unit12 = Unit.create!(
  price: 100,
  description: "The original Tent of Bear Grylls",
  available: true,
  title: "Tent Bear Grylls",
  shop: shop4
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1701964665/red_Tent_on_green_grass_casual_1_c0qykn.jpg")
unit12.photo.attach(io: file, filename: "Bike.png", content_type: "image/png")
unit12.save


unit13 = Unit.create!(
  price: 120,
  description: "The most popular tent for visitors of the Valley Forge, this Tent serves the needs of both the experienced camper as well as the novice hiker",
  available: true,
  title: "Adventurer's Tent",
  shop: shop4
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1702391841/a_blue_tent_on_a_savanna_cinem_enjliu.jpg")
unit13.photo.attach(io: file, filename: "Bike.png", content_type: "image/png")
unit13.save


unit14 = Unit.create!(
  price: 150,
  description: "The country bike is the only bike you need to go across country and road, hills and valleys, with it's robust bouncyness, you will always be comfortable and fast on this bike",
  available: true,
  title: "Country Bike",
  shop: shop3
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1702391840/a_bicycle_with_a_low_instep_ci_s5ossn.jpg")
unit14.photo.attach(io: file, filename: "Bike.png", content_type: "image/png")
unit14.save


unit15 = Unit.create!(
  price: 90,
  description: "The kayak MADE for the Norwegian Fjords",
  available: true,
  title: "Kayak NorVege",
  shop: shop2
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1702391841/a_yellow_kayak_on_a_a_ridge_ci_rqwiow.jpg")
unit15.photo.attach(io: file, filename: "kayak.png", content_type: "image/png")
unit15.save


unit16 = Unit.create!(
  price: 100,
  description: "This child-friendly surfboard is perfect for your young ones, or for the beginners among you"
  title: "Surfboard Sunshine",
  shop: shop1
)
file = URI.open("https://res.cloudinary.com/dev4ls0vk/image/upload/v1702392412/Yellow_Surfboard_on_a_tropical_v2vhx1.jpg")
unit16.photo.attach(io: file, filename: "surfboard.png", content_type: "image/png")
unit16.save




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

booking3 = Booking.create!(
  user: mounzer,
  unit: unit2,
  start_date: "12-12-2023",
  end_date: "13-12-2023"
)

booking4 = Booking.create!(
  user: chris,
  unit: unit6,
  start_date: "12-12-2023",
  end_date: "13-12-2023"
)



Chatroom.create!(id:1, name: "chat")
