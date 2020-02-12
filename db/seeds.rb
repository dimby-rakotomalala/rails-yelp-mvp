# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

categories = %w[chinese italian japanese french belgian]

i = 1
while i < 6
  puts "Création du restaurant #{i}"
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone, category: categories.sample)
  if restaurant.save
  puts "Restaurant #{restaurant.name} créé"
  end
  i += 1
end

puts 'Finished!'
