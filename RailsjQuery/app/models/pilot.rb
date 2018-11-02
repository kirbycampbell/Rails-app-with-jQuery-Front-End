class Pilot < ApplicationRecord
  has_one :rocket

end

#Example Association
#pilotson = Pilot.new(first_name: "Kirby")
#rockerson = Rocket.new(name: "Apollo 56")
#rocket.pilot = pilotson
#pilot.rocket = rockerson
