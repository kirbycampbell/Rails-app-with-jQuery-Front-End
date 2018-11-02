class RocketEngineerRelation < ApplicationRecord
  belongs_to :rocket
  belongs_to :engineer
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
