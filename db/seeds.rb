# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

5.times do
  puts "generating random data!"
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  category = categories[rand(0..4)]
  phone_number = Faker::PhoneNumber.phone_number
  puts "storing in hash"
  hash = { name: name, address: address, phone_number: phone_number, category: category }
  puts "Restaurant.new!"
  restaurant = Restaurant.new(hash)
  puts "Restaurant.save!"
  restaurant.save
end
