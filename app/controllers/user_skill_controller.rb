class UserSkillController < ApplicationController

  def index
    @skills = Skill.all
    render json: @skills
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(
      name: params[:name],
      user_id: params[:user_id])
      if @skill.save
        render json: @skill
      else
        render json: @skill.errors
      end
    end

    def edit
      @user_skill = UserSkill.find(params[:id])
    end

    def update
      @user_skill=UserSkill.find(params[:id])
      @user_skill.update(params[:rating])
      render json: @user_skill
    end
end
