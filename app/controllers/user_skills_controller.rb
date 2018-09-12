class UserSkillsController < ApplicationController

  

  def update
    @user_skill = UserSkill.find(params[:id])
    @user_skill.update(rating: params[:rating])
    render json: @user_skill
  end
end
