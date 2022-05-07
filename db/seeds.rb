# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating user ..."
10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "passsword",
    username: Faker::Internet.username(specifier: 5..10),
    renter: false,
    owner: true
  )
  puts "#{user.username} created"
end

puts "Cleaning game database..."

# Game.destroy_all

puts 'Creating 10 fake video games...'
10.times do
  game = Game.create(
    name: Faker::Game.title,
    category: "#{Faker::Game.platform}, #{Faker::Game.genre}",
    description: Faker::Lorem.paragraph,
    location: Faker::Address.city,
    price_per_day: "£#{Faker::Number.within(range: 1..10)}",
    user_id: [1..5].sample
  )
  puts "#{game.name} created"
end
puts 'Finished!'



# puts 'Creating 5 consoles...'
# 5.times do
#   console = Console.new(
#     category: Faker::Game.platform,
#   )
#   console.save!
# end
# puts 'Finished!'



# puts 'Creating 5 boardgames...'
# 5.times do
#   boardgame = Boardgame.new(
#     name: Faker::Game.title,
#   )
#   boardgame.save!
# end
# puts 'Finished!'

# peripherals

# puts 'Creating 5 peripherals...'
# 5.times do
#   peripherals = Peripherals.new(
#     name: Faker::Device.model_name,
#     category: Faker::Game.platform,
#   )
#   peripherals.save!
# end
# puts 'Finished!'
