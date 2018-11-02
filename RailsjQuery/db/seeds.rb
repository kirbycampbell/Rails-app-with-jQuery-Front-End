# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pilot = Pilot.new(first_name: "Kirby", last_name: "Campbell", age: 29, slogan: "Lets do this baby")
pilot2 = Pilot.new(first_name: "Mister", last_name: "Stuperson", age: 48, slogan: "Lets go on and get on the damn ship sistah")
rocket = Rocket.new(name: "Apollo 49", top_speed: 153, capacity: 4)
engineer = Engineer.new(first_name: "Michio", last_name: "Kaku", age: 75, credentials: "Harvard Space Institute")
relation = RocketEngineerRelation.new(rocket: rocket, engineer: engineer)
relation.save
pilot.rocket = rocket
rocket.pilot = pilot
rocket.save
pilot.save
engineer.save
