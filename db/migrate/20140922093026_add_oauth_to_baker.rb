class AddOauthToBaker < ActiveRecord::Migration
  def change
    add_column :bakers, :provider, :string
    add_column :bakers, :uid, :string
    add_column :bakers, :oauth_token, :string
    add_column :bakers, :oauth_expires_at, :datetime
  end
end
