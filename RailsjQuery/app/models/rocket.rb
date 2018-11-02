class Rocket < ApplicationRecord
  has_many :rocket_relations
  has_many :engineers, :through => :rocket_relations
  belongs_to :pilot
end
