class RocketSerializer < ActiveModel::Serializer
  attributes :name, :top_speed, :capacity, :updated_at
  belongs_to :pilot, serializer: PilotSerializer


end
