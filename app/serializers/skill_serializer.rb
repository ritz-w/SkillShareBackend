class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name
  had_many :user_skills
end
