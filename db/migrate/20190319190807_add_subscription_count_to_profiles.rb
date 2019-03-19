class AddSubscriptionCountToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :subscriptions_count, :integer
  end
end
