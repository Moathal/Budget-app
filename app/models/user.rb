class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :categories, class_name: 'Category', dependent: :destroy
  has_many :transactions, class_name: 'Transaction', dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  #  def most_recent_categories
  #   User.categories.order(created_at: :desc)
  # end

  # def most_ancient_categories
  #   User.categories.where(user_id: user.id).order(created_at: :asc)
  # end

  # def most_recent
  #   User.transactions.order(created_at: :desc)
  # end

  # def most_ancient
  #   User.transactions.order(created_at: :asc)
  # end
end
