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
      mod_name: params[:mod_name])
      if @user.save
        render json: @user
      else
        render json: @user.errors
      end
  end
end
