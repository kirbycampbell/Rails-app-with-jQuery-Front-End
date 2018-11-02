class Rocket < ApplicationRecord
  has_many :rocket_engineer_relations
  has_many :engineers, :through => :rocket_engineer_relations
  belongs_to :pilot
end

#Example Association
#pilotson = Pilot.new(first_name: "Kirby")
#rockerson = Rocket.new(name: "Apollo 56")
#rocket.pilot = pilotson
#pilot.rocket = rockerson


#Relation Example
#engineerson = Engineer.new(first_name: "Michio")
#rockerson = Rocket.new(name: "Apollo")
#relation = RocketEngineerRelation.new
#relation.rocket = rockerson
#relation.engineer = engineerson
#relation.save
#rocket.engineers
##will list all engineers for this rocket
#engineers.rockets
##will list all rockets for this engineer
