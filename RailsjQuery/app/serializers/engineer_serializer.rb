class EngineerSerializer < ActiveModel::Serializer
  has_one :rocket
  attributes(:first_name, :last_name, :age, :credentials)

end
