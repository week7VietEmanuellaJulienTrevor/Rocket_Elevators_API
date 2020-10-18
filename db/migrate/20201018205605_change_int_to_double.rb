class ChangeIntToDouble < ActiveRecord::Migration[5.2]
  def change
    change_column :quotes, :elevator_cost, :float(2)
    change_column :quotes, :installation_cost, :float(2)
    change_column :quotes, :total_cost, :float(2)
  end
end
