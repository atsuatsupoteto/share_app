class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string      :expenses_item #支出科目
      t.integer         :user_id
      t.timestamps
    end
  end
end
