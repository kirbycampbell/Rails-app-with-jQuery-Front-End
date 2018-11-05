class RocketSerializer < ActiveModel::Serializer
  attributes :id, :name, :top_speed, :capacity, :updated_at
  belongs_to :pilot, serializer: PilotSerializer
  has_many :engineers, serializer: EngineerSerializer



end
