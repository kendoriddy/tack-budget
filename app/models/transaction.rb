class Transaction < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :category_transactions, dependent: :destroy
  has_many :categories, through: :category_transactions

  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
