# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
User.destroy_all

puts "Cleaning database..."
Game.destroy_all

puts "Creating users..."

User.create!(email: "sooj@gmail.com",
             password: "catlady",
             username: "sooj",
             first_name: "Soo-Jin",
             last_name: "Hwang")

puts "Created sooj!"

User.create!(email: "joe@gmail.com",
             password: "afroguy",
             username: "mfjoe",
             first_name: "Josef",
             last_name: "Hare-Brown")

puts "Created mfjoe!"

User.create!(email: "aisselaa@gmail.com",
             password: "parislady",
             username: "Aisselaa",
             first_name: "Alessia",
             last_name: "Bacigalupo")

puts "Created Aisselaa!"

User.create!(email: "sam@gmail.com",
             password: "carguy",
             username: "sammy",
             first_name: "Samuel",
             last_name: "Gebru")

puts "Created Aisselaa!"

puts "All users created!"

category = ["Peripherals", "Video games", "Consoles", "Boardgames"]

puts "Creating games..."

Game.create!(name: "Tekken 3 - PSOne",
             category: category[rand(0..3)],
             description: "Great game, still works perfect.",
             location: "-914 Manor Road, London, SE79 8LK",
             price_per_day: 5,
             user: User.all.sample)

Game.create!(name: "Street Fighter 2 - SNES",
             category: category[rand(0..3)],
             description: "A classic, turbo edition.",
             location: "-66 George Street
             London
             E67 8SO",
             price_per_day: 4,
             user: User.all.sample)

Game.create!(name: "Tamagotchi 42804 Original Black",
             category: category[rand(0..3)],
             description: "Bringing the classic back. Few scuffs but still working.",
             location: "12 Victoria Road
             London
             SE28 4FR",
             price_per_day: 3,
             user: User.all.sample)

Game.create!(name: "LOGITECH Driving Force G29 PlayStation & PC Racing Wheel & Pedals",
             category: category[rand(0..3)],
             description: "For PC and Playstion 4 and 5.",
             location: "99 Church Road
             London
              WC57 2FK",
             price_per_day: 10,
             user: User.all.sample)

Game.create!(name: "Talisman Revised Fourth Edition",
             category: category[rand(0..3)],
             description: "4th Edition!.",
             location: "78 Manchester Road
             London
             SE48 0BE",
             price_per_day: 7,
             user: User.all.sample)

Game.create!(name: "The Legend of Zelda: Breath of the Wild - Switch",
             category: category[rand(0..3)],
             description: "Have lost case but cartridge all good.",
             location: "40 High Street
             London
             W51 6NR",
             price_per_day: 4,
             user: User.all.sample)

Game.create!(name: "Scrabble",
             category: category[rand(0..3)],
             description: "Only 3 tile holders included.",
             location: "99 Park Lane
             London
             W56 0TC",
             price_per_day: 3,
             user: User.all.sample)

Game.create!(name: "Sega DreamCast",
             category: category[rand(0..3)],
             description: "1 controller included.",
             location: "9111 High Street
             London
             E70 8RH",
             price_per_day: 17,
             user: User.all.sample)

Game.create!(name: "Nintendo 64",
             category: category[rand(0..3)],
             description: "2 controllers included.",
             location: "65 Main Street
             London
             WC87 2FA",
             price_per_day: 16,
             user: User.all.sample)

Game.create!(name: "Sony Dualsense",
             category: category[rand(0..3)],
             description: "Controller for PS5, hardly used.",
             location: "23 South Street
             London
             W28 5VA",
             price_per_day: 3,
             user: User.all.sample)

Game.create!(name: "Final Fantasy X - PS2",
             category: category[rand(0..3)],
             description: "Arguably the best in the series. Minor scratches but works fine.",
             location: "985 Park Lane
             London
             E18 0YN",
             price_per_day: 4,
             user: User.all.sample)

Game.create!(name: "Sonic Adventure - DreamCast",
             category: category[rand(0..3)],
             description: "For 3 month rental.",
             location: "9575 Manchester Road
             London
             SW53 8GO",
             price_per_day: 5,
             user: User.all.sample)

Game.create!(name: "Jet Set Radio - DreamCast",
             category: category[rand(0..3)],
             description: "For 3 month rental.",
             location: "9575 Manchester Road
             London
             SW53 8GO",
             price_per_day: 6,
             user: User.all.sample)

Game.create!(name: "PS2 Gun Controller",
             category: category[rand(0..3)],
             description: "Perfect for old school classics like Time Crisis.",
             location: "632 Station Road
             London
             N34 2LK",
             price_per_day: 6,
             user: User.all.sample)

puts "All games created!"

puts "Creating bookings"

rand(6..10).times do
  Booking.create!(start_date: DateTime.now,
                  end_date: DateTime.now + rand(3..7),
                  user: User.all.sample,
                  game: Game.all.sample,
                  approved: false)
end

puts "Booking created!"

puts "ALL DONE!"

#couldve made an array and then .random
