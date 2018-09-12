class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :mod_name, :slack_username
  has_many :user_skills
end
