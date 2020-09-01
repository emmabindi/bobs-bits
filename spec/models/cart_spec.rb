require 'rails_helper'

RSpec.describe Cart, type: :model do
  subject {build(:user)}
  subject do
    described_class.new(
      user_id: 1
    )
  end

  context 'validations' do
    it 'has a valid factory' do
      expect(build(:cart)).to be_valid
    end
  end

  context 'associations' do
    it { expect(subject).to belong_to(:user) }
  end
end
