class Category < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :transactions

  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 250
  validates :icon, presence: true
end
