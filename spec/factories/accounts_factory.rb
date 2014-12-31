require 'ffaker'

FactoryGirl.define do
  factory :account do
    # use sequence to ensure unique values
    sequence :shopify_account_url do |n|
      "test-#{n}.myshopify.com"
    end
    shopify_password 'Faker::Internet.password'
    created_at { DateTime.now }
    updated_at { DateTime.now }
    # use large random number to ensure unique values
    shopify_shop_id { rand 99999999 }
    sequence :shopify_shop_name do |n|
      "shop_#{n}"
    end
    shop_owner "Faker::Internet.name"
    sequence :email do |n|
      "owner_#{n}@example.com"
    end
  end
end
