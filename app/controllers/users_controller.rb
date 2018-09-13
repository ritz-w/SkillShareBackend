class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
      @user = User.create(
      name: params[:name],
      email: params[:email],
      slack_username: params[:slack_username],
      mod_name: params[:mod_name]
      )
      # each user is intantiated with all the skills
      # each skill starts from 0 and then the user can change it accordingly

      # Skill.all.each { |skill| @user.user_skills << UserSkill.create(user_id: @user.id, skill_id: skill.id, rating: 0)  }
      if @user.save
        render json: @user
      else
        render json: @user.errors
      end
  end

  

  def list_rating
    ratingList= Users.all.select{|user| user.rating}
    ratingList.map{|rating| rating}
end

end
