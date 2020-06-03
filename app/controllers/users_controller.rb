class UsersController < ApplicationController

  def index
    @user  = User.find(1,2)
  end

  def new
    @user = User.new
  end

  def edit
    @user  = find_user_by_id
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end

  def update
    @user = find_user_by_id
    @user.update(user_params)
    redirect_to users_path
  end

  def user_params
    params.require(:user).permit(:name)
  end

  def find_user_by_id
    User.find(params[:id])
  end

end
