FactoryBot.define do
  factory :cart_product do
    association :product
    association :cart
  end
end
