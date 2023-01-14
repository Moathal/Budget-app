require 'rails_helper'

RSpec.describe Transaction, type: :feature do
  before(:each) do
    @user = User.create!(name: 'john', email: "john#{Random.rand(1...1000)}@example.com", password: 'password',
                         password_confirmation: 'password', confirmation_token: 'token', confirmed_at: Time.zone.now, confirmation_sent_at: DateTime.now)
    @category = Category.create!(user_id: @user.id, name: 'test', icon: 'burger.png')
    @transaction = Transaction.create!(user_id: @user.id, name: 'test', amount: 20, category_id: @category.id)
  end

  describe 'index page' do
    it "I can see the categories's name" do
      visit "categories/#{@category.id}"
      page.has_content?(@transaction.name)
    end

    it "I can see the categories's amount." do
      visit "categories/#{@category.id}"
      page.has_content?(@transaction.amount)
    end
  end
end
