class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
