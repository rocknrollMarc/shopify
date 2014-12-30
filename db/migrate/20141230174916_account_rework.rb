class AccountRework < ActiveRecord::Migration
  def change
    remove_column :accounts, :shopify_shared_secret
    remove_column :accounts, :shopify_api_key

    add_column :accounts, :shopify_shop_id, :integer
    add_column :accounts, :shopify_shop_name, :string
    add_column :accounts, :shop_owner, :string
    add_column :accounts, :email, :string
  end
end
