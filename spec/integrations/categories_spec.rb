require 'rails_helper'

RSpec.describe Category, type: :feature do
  before(:each) do
    @user = User.create!(name: 'john', email: "john#{Random.rand(1...1000)}@example.com", password: 'password',
                         password_confirmation: 'password', confirmation_token: 'token', confirmed_at: Time.zone.now, confirmation_sent_at: DateTime.now)

    @category = Category.new(user_id: @user.id, name: 'test', icon: 'burger.png')
    @category.save
  end

  #   before do
  #     login_as(@user, scope: :user)
  #     subject.save
  #   end

  describe 'index page' do
    it "I can see the group's name" do
      visit categories_path
      page.has_content?(@category.name)
    end

    it "I can see the group's icon." do
      visit categories_path
      page.has_content?(@category.icon)
    end
  end
end
