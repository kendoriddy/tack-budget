class Category < ApplicationRecord
  belongs_to :user

  has_many :transactions_category, dependent: :destroy
  has_many :transactions, through: :transactions_category

  validates :name, presence: true
  validates :icon, presence: true
end
