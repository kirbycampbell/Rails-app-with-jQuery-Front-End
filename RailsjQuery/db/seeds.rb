# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pilot = Pilot.new(first_name: "Kirby", last_name: "Campbell", age: 29, slogan: "Lets do this baby")
pilot2 = Pilot.new(first_name: "Mister", last_name: "Stuperson", age: 48, slogan: "Lets go on and get on the damn ship sistah")
rocket = Rocket.new(name: "Apollo 49", top_speed: 153, capacity: 4, pilot_id: pilot.id)

pilot.rocket = rocket
rocket.pilot = pilot
rocket.save
engineer = Engineer.new(first_name: "Michio", last_name: "Kaku", age: 75, credentials: "Harvard Space Institute", rocket_id: rocket.id)
engineer2 = Engineer.new(first_name: "Popo", last_name: "Misterson", age: 55, credentials: "Harvard Space Program", rocket_id: rocket.id)
pilot.save
engineer.save
engineer2.save
rocket.save

pilot3 = Pilot.new(first_name: "Tanya", last_name: "Harding", age: 35, slogan: "Break a Leg!")
pilot4 = Pilot.new(first_name: "Mrs.", last_name: "Pumperson", age: 21, slogan: "Alright Padnah!")
rocket2 = Rocket.new(name: "Sumpolo 44", top_speed: 253, capacity: 8, pilot_id: pilot3.id)

pilot3.rocket = rocket
rocket2.pilot = pilot
rocket2.save
engineer3 = Engineer.new(first_name: "Michio", last_name: "Kaku", age: 75, credentials: "Harvard Space Institute", rocket_id: rocket2.id)
engineer4 = Engineer.new(first_name: "Terkle", last_name: "Merkleson", age: 24, credentials: "Cornell Ivy Vocals", rocket_id: rocket2.id)
pilot3.save
engineer3.save
engineer4.save
rocket2.save
