class ExpensesController < ApplicationController

  def index
    @expenses = Expenses.all
  end

  def show
    @expenses = Expenses.all
    end
  end

end
