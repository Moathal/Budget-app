require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    assign(:category, Category.create!(
      name: "Name",
      amount: 2.5,
      users: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
