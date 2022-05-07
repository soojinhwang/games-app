# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 5 fake video games...'
5.times do
  videogame = Videogame.new(
    name:  Faker::Game.title,
    category: "#{Faker::Game.platform}, #{Faker::Game.genre}",
  )
  videgame.save!
end
puts 'Finished!'


puts 'Creating 5 consoles...'
5.times do
  console = Console.new(
    category: Faker::Game.platform,
  )
  console.save!
end
puts 'Finished!'



puts 'Creating 5 boardgames...'
5.times do
  boardgame = Boardgame.new(
    name: Faker::Game.title,
  )
  boardgame.save!
end
puts 'Finished!'

peripherals

puts 'Creating 5 peripherals...'
5.times do
  peripherals = Peripherals.new(
    name: Faker::Device.model_name,
    category: Faker::Game.platform,
  )
  peripherals.save!
end
puts 'Finished!'
