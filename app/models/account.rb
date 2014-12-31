class Account < ActiveRecord::Base
  has_many :orders, :dependent => :destroy
  has_many :products, :dependent => :destroy
  has_many :contests, :dependent => :destroy
  validates_presence_of :shopify_account_url, :shopify_password, :shopify_shared_secret
end
