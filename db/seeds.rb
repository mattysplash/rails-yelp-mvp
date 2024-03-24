# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "44 0405 405 111", category: "french"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "44 0234 333 111", category: "italian"}
kebab_west = {name: "Kebab West", address: "65B Westditch High St, London W1 9PQ", phone_number: "44 0234 333 111", category: "italian"}
shrooooom = {name: "Shrooooom", address: "100 Zoooom St, London SE12 10B", phone_number: "44 98765 432 321", category: "belgian"}
burgermeister =  {name: "Burgermeister", address: "1 High St, London S1 6UK", phone_number: "44 04040 333 111", category: "japanese"}

[dishoom, pizza_east, kebab_west, shrooooom, burgermeister].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
