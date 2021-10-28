# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all


bdx = City.create(name: 'Bordeaux')
nan = City.create(name: 'Nantes')
par = City.create(name: 'Paris')

10.times do
  dogsitter = Dogsitter.create(
    name: Faker::Name.first_name,
    city: [bdx, nan, par][rand(0..2)]
  )
  puts dogsitter
end

50.times do
  dog = Dog.create(
    name: 'DOGGY ' + Faker::Name.first_name,
    city: [bdx, nan, par][rand(0..2)]
  )
  puts dog
end

100.times do
  stroll = Stroll.create(
    dogsitter: Dogsitter.all[rand(0..9)],
    dog: Dog.all[rand(0..50)],
    city: [bdx, nan, par][rand(0..2)],
  )
  puts stroll
end

Stroll.all.each do |stroll|
  stroll.update(city: stroll.dogsitter.city)
  puts "Stroll scheduled at the dogsitter's city : " + stroll.city.name
end