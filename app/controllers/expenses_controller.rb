class ExpensesController < ApplicationController

  def index
  end

  def show
    @user = User.find(1)
    @user2 = User.find(2).name
  end

  def new
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
