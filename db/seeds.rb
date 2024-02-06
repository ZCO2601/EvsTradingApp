# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Destroying all potato prices'
PotatoPrice.destroy_all

PotatoPrice.create(time: "2022-08-22T09:00:00.000Z", value: 100.25)
PotatoPrice.create(time: "2022-08-22T09:00:01.800Z", value: 100.29)
PotatoPrice.create(time: "2022-08-22T09:00:02.000Z", value: 100.29)
PotatoPrice.create(time: "2022-08-22T09:00:03.800Z", value: 100.29)
PotatoPrice.create(time: "2022-08-22T09:00:04.000Z", value: 100.29)
PotatoPrice.create(time: "2022-08-22T09:00:05.800Z", value: 100.29)

puts 'Potato prices created'
