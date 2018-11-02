class PilotSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :age, :slogan, :updated_at
  has_one :rocket
end
