class RocketSerializer < ActiveModel::Serializer
  attributes :name, :top_speed, :capacity, :updated_at
  belongs_to :pilot, serializer: PilotSerializer
  #has_many :rocket_engineer_relations
  has_many :engineers, :through => :rocket_engineer_relations


end
