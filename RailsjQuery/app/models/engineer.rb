class Engineer < ApplicationRecord
  has_many :rocket_engineer_relations
  has_many :rockets, :through => :rocket_engineer_relations
end

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
