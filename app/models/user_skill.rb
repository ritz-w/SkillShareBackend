class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

# iterating through the userSkills array and find the specific userSkills that match the id
# and which have a rating of above a certain percentage

def self.UsersSkillsOverX(skill_id: skill_id, skill_rating: skill_rating)

  array = UserSkill.all.select{|userskill|
    userskill.skill_id === skill_id && userskill.rating >= skill_rating
  }
  users_array = []
  array.each{|specificUser|
    User.all.each{|user|
        if specificUser.user_id === user.id
           users_array<<user
        end
     }
  }
  return users_array
end


end
