# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user_1= User.create(email: "antonio@hotmail.com", password: "123456")
user_2= User.create(email: "ruda@hotmail.com", password: "123456")
user_3 = User.create(email: "marcelo@hotmail.com", password: "123456")
user_4 = User.create(email: "wagner@hotmail.com", password: "123456")




require "open-uri"

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678047472/Outfits/P0_fmtxcv.jpg")
offer_1 = Offer.new(title: "Jeans", category: "Trousers", price: 5.0, description: "Blue Washed Jeans", size: "M", user_id: 1)
offer_1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
offer_1.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678047218/Outfits/P0_z5s1jq.jpg")
offer_2 = Offer.new(title: "Sweater Vest", category: "Jumper", price: 5.0, description: "Sweater Vest in blue and white stripes with a touch of red", size: "M", user_id: 1)
offer_2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
offer_2.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678047433/Outfits/P0_wxlmno.jpg")
offer_3 = Offer.new(title: "Pink Curdoray Jacket", category: "Jacket", price: 15.0, description: "Pink Jacket", size: "M", user_id: 2)
offer_3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
offer_3.save

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678047391/Outfits/P0_kvobvb.jpg")
offer_4 = Offer.new(title: "Hat", price: 2.0, category: "Hat", description: "Navy Hat", size: "M", user_id: 3)
offer_4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
offer_4.save

booking_1 = Booking.create(price_total: 10.0, start_date: Date.new(2023, 5, 23) , end_date: Date.new(2023, 5, 25), user_id: 1, offer_id: 1)
booking_1 = Booking.create(price_total: 5.0 , start_date: Date.new(2023, 5, 23) , end_date: Date.new(2023, 5, 24), user_id: 1, offer_id: 2)
