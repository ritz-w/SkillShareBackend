class UserSkillSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :rating, :skill
  class SkillSerializer < ActiveModel::Serializer
    has_many :user_skills
  end
end
