require 'rails_helper'

RSpec.describe Account, :type => :model do

  it 'is invalid without a shopify_account_url' do
    account = FactoryGirl.build(:account, shopify_account_url: nil)
    account.valid?
    expect(account.errors[:shopify_account_url] ).to include("can't be blank") 
  end

  it 'is invalid without a shopify_password' do
    account = FactoryGirl.build(:account, shopify_password: nil)
    account.valid?
    expect(account.errors[:shopify_password] ).to include("can't be blank") 
  end

  it 'is invalid without a shared_secret' do
    account = FactoryGirl.build(:account, shopify_shared_secret: nil)
    account.valid?
    expect(account.errors[:shopify_shared_secret]).to include("can't be blank") 
    
  end
end
