require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      name: "MyString",
      icon: "MyString",
      users: nil,
      categories: nil
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input[name=?]", "transaction[name]"

      assert_select "input[name=?]", "transaction[icon]"

      assert_select "input[name=?]", "transaction[users_id]"

      assert_select "input[name=?]", "transaction[categories_id]"
    end
  end
end
