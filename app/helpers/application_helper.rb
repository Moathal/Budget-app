module ApplicationHelper
  def sum_of_amounts(user)
    user.transactions.sum(:amount)
  end
end
