class ExpensesController < ApplicationController

  def index
    @user=all
  end

  def show
    @user = User.find(1)
    @user2 = User.find(2).name
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
