class Category < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_and_belongs_to_many :trans, foreign_key: "categories_id", class_name: "Transaction"

  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 250
  validates :icon, presence: true
end
