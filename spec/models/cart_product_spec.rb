require 'rails_helper'

RSpec.describe CartProduct, type: :model do
  subject {build(:cart_product)}
  subject do
    described_class.new(
      product_id: 1,
      cart_id: 1
    )
  end

  context 'validations' do
    it 'has a valid factory' do
      expect(build(:cart_product)).to be_valid
    end
  end

  context 'associations' do
    it { expect(subject).to belong_to(:cart) }
    it { expect(subject).to belong_to(:product) }
  end
end
