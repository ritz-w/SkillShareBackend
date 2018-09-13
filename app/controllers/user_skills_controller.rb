class UserSkillsController < ApplicationController

def index
  @user_skills= UserSkill.all
  render json: @user_skills
end

  def create
    @user_skill = UserSkill.new(
      user_id: params[:user_id],
      skill_id: params[:skill_id],
      rating: params[:rating]
    )
    @user_skill.save
    render json: @user_skill
  end

  def update
    @user_skill = UserSkill.find(params[:id])
    @user_skill.update(rating: params[:rating])
    render json: @user_skill
  end

  def filterSkills
    @rating = User.find(params[:user_id]).user_skills.find_by(skill_id: params[:skill_id])[:rating]
    @user_skills = UserSkill.UsersSkillsOverX(skill_id: params[:skill_id], skill_rating: @rating)
    render json: @user_skills
  end
end
