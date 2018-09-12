class SkillsController < ApplicationController

  def index
    @skills = Skill.all
    render json: @skills
  end

  def show
    @skill = Skill.find(params[:id])
      render json: @skill
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



end
