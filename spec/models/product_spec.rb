require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validations' do
    it 'has a valid factory' do
      expect(build(:product)).to be_valid
    end
    it {expect(subject).to validate_presence_of(:name)}
    it {expect(subject).to validate_presence_of(:price)}
  end

  context 'associations' do
    it {expect(subject).to have_many(:cart_products)}
  end
end
