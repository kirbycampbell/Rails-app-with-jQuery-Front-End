class Rocket < ApplicationRecord
  has_many :engineers
  belongs_to :pilot
end
