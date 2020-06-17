class Expense < ApplicationRecord

 belongs_to :expense_value
 has_many :users

end
