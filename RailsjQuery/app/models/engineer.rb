class Engineer < ApplicationRecord
  has_many :rocket_relations
  has_many :rockets, :through => :rocket_relations
end
