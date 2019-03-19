class CreateLiftTotals < ActiveRecord::Migration[5.1]
  def change
    create_table :lift_totals do |t|
      t.integer :profile_id
      t.integer :weight
      t.date :date

      t.timestamps
    end
  end
end
