class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :mod_name, :tagline
  has_many :user_skills
end
