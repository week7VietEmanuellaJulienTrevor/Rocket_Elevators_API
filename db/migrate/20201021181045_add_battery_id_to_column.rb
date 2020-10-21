class AddBatteryIdToColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :columns, :battery_id, :integer
  end
end
