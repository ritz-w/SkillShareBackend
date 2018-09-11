class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :mod_name, :slack_username, :skills
end
