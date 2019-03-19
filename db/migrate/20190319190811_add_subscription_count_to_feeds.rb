class AddSubscriptionCountToFeeds < ActiveRecord::Migration[5.1]
  def change
    add_column :feeds, :subscriptions_count, :integer
  end
end
