class UserSkillsController < ApplicationController

def index
  @user_skills= UserSkill.all
  render json: @user_skills
end

  def create
    @user_skill = UserSkill.create(
      user_id: params[:user_id],
      skill_id: params[:skill_id],
      rating: params[:rating]
    )
    if @user.save
      render json: @user_skill
    else
      render json: @user_skill.errors
    end
  end

  def update
    @user_skill = UserSkill.find(params[:id])
    @user_skill.update(rating: params[:rating])
    render json: @user_skill
  end
end
