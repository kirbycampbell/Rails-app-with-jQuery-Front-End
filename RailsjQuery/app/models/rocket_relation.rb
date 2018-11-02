class RocketRelation < ApplicationRecord
  belongs_to :engineer
  belongs_to :pilot
end
