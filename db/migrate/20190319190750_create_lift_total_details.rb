class CreateLiftTotalDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :lift_total_details do |t|
      t.integer :lift_total_id
      t.integer :squat
      t.integer :bench
      t.integer :deadlift

      t.timestamps
    end
  end
end
