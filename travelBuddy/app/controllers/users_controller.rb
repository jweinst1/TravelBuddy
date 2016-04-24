class UsersController < ApplicationController
  #before_filter :authenticate_user!
  #before_action :authenticate_user!, only: [:index]
  
  def index
    @users = User.all 
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.create(user_params)
    if @user.save 
      redirect_to @user 
    else
      render "new" 
    end
  end

  def show
    @user = User.find(params[:id]) 
  end

  private

  def user_params
    params.require(:user).permit(:name, :email) 
  end

  """def authenticate
    redirect_to(root_path) unless current_user.nil?
  end"""
end