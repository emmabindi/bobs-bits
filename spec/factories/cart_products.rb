FactoryBot.define do
  factory :cart_product do
    # product { nil }
    # cart { nil }
    association :product
    association :cart
  end
end
