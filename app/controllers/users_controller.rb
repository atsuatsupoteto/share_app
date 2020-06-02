class UsersController < ApplicationController

  def index
  end

  def show
    @user  = User.find(1)
    @user2 = User.find(2)
  end

  def new
    @user = User.new()  #新しいモデルオブジェクトを作成
  end

  def edit
    @user  = User.find(1)
    @user2 = User.find(2)
  end

  def create
  end

  def update
  end

  def destroy
  end

end
