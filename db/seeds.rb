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
Sitter.destroy_all
City.destroy_all
Pack.destroy_all


bdx = City.create(name: 'Bordeaux')
nan = City.create(name: 'Nantes')
par = City.create(name: 'Paris')

10.times do
  sitter = Sitter.create(
    name: Faker::Name.first_name,
    city: [bdx, nan, par][rand(0..2)]
  )
  puts sitter
end

pack1 = Pack.create
pack2 = Pack.create
pack3 = Pack.create
pack4 = Pack.create

50.times do
  dog = Dog.create(
    name: 'DOGGY ' + Faker::Name.first_name,
    city: [bdx, nan, par][rand(0..2)],
    pack: [pack1, pack2, pack3, pack4][rand(0..3)]
  )
  puts dog
end

100.times do
  stroll = Stroll.create(
    sitter: Sitter.all[rand(0..9)],
    pack: [pack1, pack2, pack3, pack4][rand(0..3)]
  )
  puts stroll
end
