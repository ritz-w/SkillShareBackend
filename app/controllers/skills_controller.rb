class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render json: @skill
  end

  def show
    @skill = Skill.find(params[:id])
      render json: @skill
  end

  def new
    @skill = Skill.new
    @user = User.find(params[:user_id])
  end

  def create
    @skill = Skill.create(
      name: params[:name],
      user_id: params[:user_id],
      rating: params[:rating])
      if @skill.save
        render json: @skill
      else
        render json: @skill.errors
      end
  end



end
