class Category < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy

  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 250
  validates :icon, presence: true
end
