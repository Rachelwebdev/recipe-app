require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(first_name: 'John') }

  before { subject.save }

  it 'validates presence of name' do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end
end
