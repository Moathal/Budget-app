class Transaction < ApplicationRecord
  belongs_to :users, dependent: :destroy
  has_and_belongs_to_many :categs, foreign_key: 'transactions_id', class_name: 'Category'

  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 250
  validates :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
