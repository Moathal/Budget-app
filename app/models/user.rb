class User < ApplicationRecord
  has_many :categories, class_name: 'Category', dependent: :destroy
  has_many :transactions, class_name: 'Transaction', dependent: :destroy
end
