class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 250
  validates :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
