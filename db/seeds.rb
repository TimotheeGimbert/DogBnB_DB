# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Erase database
Stroll.destroy_all
Dog.destroy_all
Sitter.destroy_all
City.destroy_all
Pack.destroy_all

# Create cities
cities = Array.new
bdx = City.create(name: 'Bordeaux')
nan = City.create(name: 'Nantes')
par = City.create(name: 'Paris')
cities = [bdx, nan, par]

# Create sitters
30.times do
  sitter = Sitter.create(
    name: Faker::Name.first_name,
    city: cities[rand(0..cities.length-1)]
  )
  puts sitter
end

# Create packs od dogs
packs = Array.new
20.times do
  pack = Pack.create
  packs << pack
end

# Create dogs
200.times do
  dog = Dog.create(
    name: 'DOGGY ' + Faker::Name.first_name,
    city: cities[rand(0..cities.length-1)],
    pack: packs[rand(0..packs.length-1)]
  )
  puts dog
end



100.times do
  random_city = cities[rand(0..cities.length-1)]
  sitters_from_random_city = Sitter.where(city: random_city)
  random_sitter = sitters_from_random_city[rand(0..sitters_from_random_city.length-1)]
  stroll = Stroll.create(
    city: random_city,
    sitter: random_sitter,
    pack: packs[rand(0..packs.length-1)]
  )
  puts stroll
end


