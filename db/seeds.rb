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

puts "Created sammy!"

puts "All users created!"

# category = ["Peripherals", "Video games", "Consoles", "Board games"]

require "open-uri"
puts "Creating games..."

game1 = Game.new(name: "Tekken 3 - PSOne",
                  category: "Video games",
                  description: "Great game and a classic, still works perfectly.",
                  location: "W6 9HA, London, Greater London, England, United Kingdom",
                  price_per_day: 5,
                  user: User.all.sample)
file = URI.open('https://m.media-amazon.com/images/I/51hVGNhU-CL._AC_.jpg')
game1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game1.save!

game2 = Game.new(name: "Street Fighter 2 - SNES",
                 category: "Video games",
                 description: "A classic, turbo edition.",
                 location: "E1 4QJ, London, Greater London, England, United Kingdom",
                 price_per_day: 4,
                 user: User.all.sample)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/1/1d/SF2_JPN_flyer.jpg')
game2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game2.save!

game3 = Game.new(name: "Tamagotchi 42804 Original Black",
                 category: "Peripherals",
                 description: "Bringing the classic back. Few scuffs but still working.",
                 location: "N1 2JT, London, Greater London, England, United Kingdom",
                 price_per_day: 3,
                 user: User.all.sample)
file = URI.open('https://m.media-amazon.com/images/I/61Jewo3pCoL._AC_SL1500_.jpg')
game3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game3.save!

game4 = Game.new(name: "Logitech Driving Force G29 Racing Wheel & Pedals",
                 category: "Peripherals",
                 description: "For PC and Playstion 4 and 5.",
                 location: "SE11 4UH, London, Greater London, England, United Kingdom",
                 price_per_day: 10,
                 user: User.all.sample)
file = URI.open('https://m.media-amazon.com/images/I/61IYYoZ66VL._AC_SL1500_.jpg')
game4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game4.save!

game5 = Game.new(name: "Talisman Revised Fourth Edition",
                 category: "Board games",
                 description: "4th Edition!.",
                 location: "N1 9DS, London, Greater London, England, United Kingdom",
                 price_per_day: 7,
                 user: User.all.sample)
file = URI.open('https://m.media-amazon.com/images/I/814UBkTubhL._AC_SL1061_.jpg')
game5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game5.save!

game6 = Game.new(name: "The Legend of Zelda: Breath of the Wild - Switch",
                 category: "Video games",
                 description: "Have lost case but cartridge all good. Probably the best game ever.",
                 location: "WC2H 8LX, London, Greater London, England, United Kingdom",
                 price_per_day: 4,
                 user: User.all.sample)
file = URI.open('https://m.media-amazon.com/images/I/61wcjVPx4sL._AC_SL1000_.jpg')
game6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game6.save!

game7 = Game.new(name: "Scrabble",
                 category: "Board games",
                 description: "Only 3 tile holders included.",
                 location: "W12 7JZ, London, Greater London, England, United Kingdom",
                 price_per_day: 3,
                 user: User.all.sample)
file = URI.open('https://m.media-amazon.com/images/I/71QT4pb7gmL._AC_SL1500_.jpg')
game7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game7.save

game8 = Game.new(name: "Sega DreamCast",
                 category: "Consoles",
                 description: "1 controller included.",
                 location: "E15 3AR, London, Greater London, England, United Kingdom",
                 price_per_day: 17,
                 user: User.all.sample)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Dreamcast-Console-Set.png/1920px-Dreamcast-Console-Set.png')
game8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game8.save!

game9 = Game.new(name: "Nintendo 64",
                 category: "Consoles",
                 description: "2 controllers included.",
                 location: "W2 5QT, London, Greater London, England, United Kingdom",
                 price_per_day: 16,
                 user: User.all.sample)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/N64-Console-Set.jpg/1920px-N64-Console-Set.jpg')
game9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game9.save!

game10 = Game.new(name: "Sony Dualsense",
                  category: "Peripherals",
                  description: "Controller for PS5, hardly used.",
                  location: "SW2 2ND, London, Greater London, England, United Kingdom",
                  price_per_day: 3,
                  user: User.all.sample)
file = URI.open('https://www.lifewire.com/thmb/iYGanm2bEX_kyCsZlWe3EmnmCME=/1500x1000/filters:no_upscale()/Dualsense-HeroHoriz-ea161ad409b84a54841e275164942de9.jpg')
game10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game10.save!

game11 = Game.new(name: "Final Fantasy X - PS2",
                  category: "Video games",
                  description: "Arguably the best in the series. Minor scratches but works fine.",
                  location: "E2 8JD, London, Greater London, England, United Kingdom",
                  price_per_day: 4,
                  user: User.all.sample)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/a/a7/Ffxboxart.jpg')
game11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game11.save!

game12 = Game.new(name: "Sonic Adventure - DreamCast",
                  category: "Video games",
                  description: "For 3 month rental.",
                  location: "EC2Y 8DR, London, Greater London, England, United Kingdom",
                  price_per_day: 5,
                  user: User.all.sample)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/6/60/Sonic_Adventure.PNG')
game12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game12.save!

game13 = Game.new(name: "Jet Set Radio - DreamCast",
                  category: "Video games",
                  description: "For 3 month rental.",
                  location: "SW1V 3NA, London, Greater London, England, United Kingdom",
                  price_per_day: 6,
                  user: User.all.sample)
file = URI.open('https://m.media-amazon.com/images/M/MV5BYjAyMTNjZGQtZmQwMC00NzI5LWIyZjItN2VkZmJiMzIzODkzXkEyXkFqcGdeQXVyMTA1OTEwNjE@._V1_.jpg')
game13.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game13.save!

game14 = Game.new(name: "PS2 Gun Controller",
                  category: "Peripherals",
                  description: "Perfect for old school classics like Time Crisis.",
                  location: "E15 1QF, London, Greater London, England, United Kingdom",
                  price_per_day: 6,
                  user: User.all.sample)
file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJACpvZzC1xGcv5TtwfDVFiKS6kcFGGukkPxZXcsrmQIm-nEFFX0hmQDU2vCqpFYm_U0Y&usqp=CAU')
game14.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game14.save!

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
