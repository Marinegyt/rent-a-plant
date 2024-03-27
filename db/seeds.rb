# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "delete bookings"
Booking.destroy_all
puts "finish"
puts "delete plants"
Plant.destroy_all
puts "finish"
puts "delete users"
User.destroy_all
puts "finish"

puts "create users"
@user_marine = User.create!(first_name: "Marine", last_name: "Gayet", address: "68 Mail François Mitterrand, 35000 Rennes", email: "marinegayet@gmail.com", password: "123456")
@user_perrine = User.create!(first_name: "Perrine", last_name: "Guerrapin", address: "2 Rue de la Mabilais, 35000 Rennes", email: "perrine.guerrapin@gmail.com", password: "123456")
@user_cedric = User.create!(first_name: "Cédric", last_name: "Mingam", address: "6 Rue des Portes Mordelaises, 35000 Rennes", email: "truc1@truc.com", password: "123456")
puts "finish"
