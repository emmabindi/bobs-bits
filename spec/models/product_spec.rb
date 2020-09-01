require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has a valid factory' do
    expect(build(:product)).to be_valid
  end

  it {expect(subject).to validate_presence_of(:name)}
  it {expect(subject).to validate_presence_of(:price)}
end
