class ExpenseValuesController < ApplicationController


  def index
    @expense_values = join_table
    @values = ExpenseValue.select('expense_value').order('expense_id asc')
    @user1 = User.find(1)
    @user2 = User.find(2)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

#,expense_values,expenses,usersテーブルの結合
  def join_table
    ExpenseValue.joins("INNER JOIN expenses ON
                        expense_values.expense_id = expenses.id
                        JOIN users ON
                        expenses.user_id = users.id"
                      ).select('expense_values.*, expenses.*,users.*')
  end


end
