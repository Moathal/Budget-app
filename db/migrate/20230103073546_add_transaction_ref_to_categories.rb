class AddTransactionRefToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :transactions, null: false, foreign_key: true
  end
end
