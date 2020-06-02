class CreateExpenseValues < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_values do |t|
      t.integer    :expense_id, null:false
      t.integer    :expense_value
      t.date   :year_month
      t.timestamps
    end
  end
end
