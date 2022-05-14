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

category = ["Peripherals", "Video games", "Consoles", "Board games"]

puts "Creating games..."

game = Game.new(name: "Tekken 3 - PSOne",
                category: "Video games",
                description: "Great game, still works perfect.",
                location: "London",
                price_per_day: 5,
                user: User.all.sample)
                file = URI.open('https://m.media-amazon.com/images/I/51hVGNhU-CL._AC_.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Street Fighter 2 - SNES",
                category: "Video games",
                description: "A classic, turbo edition.",
                location: "Bristol",
                price_per_day: 4,
                user: User.all.sample)
                file = URI.open('https://upload.wikimedia.org/wikipedia/en/1/1d/SF2_JPN_flyer.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Tamagotchi 42804 Original Black",
                category: "Peripherals",
                description: "Bringing the classic back. Few scuffs but still working.",
                location: "Manchester",
                price_per_day: 3,
                user: User.all.sample)
                file = URI.open('https://m.media-amazon.com/images/I/61Jewo3pCoL._AC_SL1500_.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "LOGITECH Driving Force G29 PlayStation & PC Racing Wheel & Pedals",
                category: "Peripherals",
                description: "For PC and Playstion 4 and 5.",
                location: "Portsmouth",
                price_per_day: 10,
                user: User.all.sample)
                file = URI.open('https://m.media-amazon.com/images/I/61IYYoZ66VL._AC_SL1500_.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Talisman Revised Fourth Edition",
                category: "Board games",
                description: "4th Edition!.",
                location: "Blackpool",
                price_per_day: 7,
                user: User.all.sample)
                file = URI.open('https://m.media-amazon.com/images/I/814UBkTubhL._AC_SL1061_.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "The Legend of Zelda: Breath of the Wild - Switch",
                category: "Video games",
                description: "Have lost case but cartridge all good.",
                location: "Liverpool",
                price_per_day: 4,
                user: User.all.sample)
                file = URI.open('https://m.media-amazon.com/images/I/61wcjVPx4sL._AC_SL1000_.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Scrabble",
                category: "Board games",
                description: "Only 3 tile holders included.",
                location: "Brighton",
                price_per_day: 3,
                user: User.all.sample)
                file = URI.open('https://m.media-amazon.com/images/I/71QT4pb7gmL._AC_SL1500_.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Sega DreamCast",
                category: "Consoles",
                description: "1 controller included.",
                location: "Leeds",
                price_per_day: 17,
                user: User.all.sample)
                file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Dreamcast-Console-Set.png/1920px-Dreamcast-Console-Set.png')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Nintendo 64",
                category: "Consoles",
                description: "2 controllers included.",
                location: "Cambridge",
                price_per_day: 16,
                user: User.all.sample)
                file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/N64-Console-Set.jpg/1920px-N64-Console-Set.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Sony Dualsense",
                category: "Peripherals",
                description: "Controller for PS5, hardly used.",
                location: "Oxford",
                price_per_day: 3,
                user: User.all.sample)
                file = URI.open('https://www.lifewire.com/thmb/iYGanm2bEX_kyCsZlWe3EmnmCME=/1500x1000/filters:no_upscale()/Dualsense-HeroHoriz-ea161ad409b84a54841e275164942de9.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Final Fantasy X - PS2",
                category: "Video games",
                description: "Arguably the best in the series. Minor scratches but works fine.",
                location: "Dover",
                price_per_day: 4,
                user: User.all.sample)
                file = URI.open('https://upload.wikimedia.org/wikipedia/en/a/a7/Ffxboxart.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Sonic Adventure - DreamCast",
                category: "Video games",
                description: "For 3 month rental.",
                location: "Southhampton",
                price_per_day: 5,
                user: User.all.sample)
                file = URI.open('https://upload.wikimedia.org/wikipedia/en/6/60/Sonic_Adventure.PNG')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "Jet Set Radio - DreamCast",
                category: "Video games",
                description: "For 3 month rental.",
                location: "Hertford",
                price_per_day: 6,
                user: User.all.sample)
                file = URI.open('https://m.media-amazon.com/images/M/MV5BYjAyMTNjZGQtZmQwMC00NzI5LWIyZjItN2VkZmJiMzIzODkzXkEyXkFqcGdeQXVyMTA1OTEwNjE@._V1_.jpg')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

game = Game.new(name: "PS2 Gun Controller",
                category: "Peripherals",
                description: "Perfect for old school classics like Time Crisis.",
                location: "Birmingham",
                price_per_day: 6,
                user: User.all.sample)
                file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJACpvZzC1xGcv5TtwfDVFiKS6kcFGGukkPxZXcsrmQIm-nEFFX0hmQDU2vCqpFYm_U0Y&usqp=CAU')
                game.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
                game.save

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
