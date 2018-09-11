class UserSkillController < ApplicationController
  def edit
    @user_skill = UserSkill.find(params[:id])
  end

  def update
    @user_skill=UserSkill.find(params[:id])
    @user_skill.update(params[:rating])
    render json: @user_skill
  end
end
