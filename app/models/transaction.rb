class Transaction < ApplicationRecord
  belongs_to :users, dependent: :destroy
  has_and_belongs_to_many :categories
end
