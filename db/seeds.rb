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

offer_1 = Offer.create(title: "Jeans", price: 35.0, description: "Blue Washed Jeans", size: "M", user_id: 1)
offer_2 = Offer.create(title: "Black Dress", price: 25.0, description: "Nice Black Dress", size: "S", user_id: 1)
offer_3 = Offer.create(title: "White Top", price: 5.0, description: "White Tank Top", size: "M", user_id: 2)
offer_4 = Offer.create(title: "Suit", price: 40.0, description: "Black Suit", size: "L", user_id: 3)
offer_5 = Offer.create(title: "Shirt", price: 40.0, description: "Blue Polo Shirt", size: "P", user_id: 4)

booking_1 = Booking.create(price_total: 105.0, start_date: Date.new(2023, 5, 23) , end_date: Date.new(2023, 5, 25), user_id: 1, offer_id: 1)
booking_1 = Booking.create(price_total: 50.0 , start_date: Date.new(2023, 5, 23) , end_date: Date.new(2023, 5, 24), user_id: 1, offer_id: 2)
