require 'rails_helper'

RSpec.describe Transaction, type: :model do
  subject { Transaction.new(name: 'Fast Food', amount: 20) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end
