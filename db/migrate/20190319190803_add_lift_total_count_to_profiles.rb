class AddLiftTotalCountToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :lift_totals_count, :integer
  end
end
