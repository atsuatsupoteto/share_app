class User < ApplicationRecord

  belongs_to :expense

  validates :name, presence: true






end
