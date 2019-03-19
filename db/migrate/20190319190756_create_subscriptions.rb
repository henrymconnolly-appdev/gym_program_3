class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.integer :feed_id
      t.integer :profile_id

      t.timestamps
    end
  end
end
