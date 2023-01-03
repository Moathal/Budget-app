require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  let(:transaction) {
    Transaction.create!(
      name: "MyString",
      icon: "MyString",
      users: nil,
      categories: nil
    )
  }

  before(:each) do
    assign(:transaction, transaction)
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(transaction), "post" do

      assert_select "input[name=?]", "transaction[name]"

      assert_select "input[name=?]", "transaction[icon]"

      assert_select "input[name=?]", "transaction[users_id]"

      assert_select "input[name=?]", "transaction[categories_id]"
    end
  end
end
