class Account < ActiveRecord::Base
  validates_presence_of :shopify_account_url, :shopify_password, :shopify_shared_secret

end
