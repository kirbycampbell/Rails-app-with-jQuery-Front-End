class RocketEngineerRelationSerializer < ActiveModel::Serializer
  attributes(:engineer)
  belongs_to :rocket
  has_many :engineers
  url [:rocket]
end
