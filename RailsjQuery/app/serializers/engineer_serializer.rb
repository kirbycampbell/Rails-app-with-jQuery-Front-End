class EngineerSerializer < ActiveModel::Serializer
  attributes(:first_name, :last_name, :age, :credentials)

end
