class ChangeFloatToString < ActiveRecord::Migration[5.2]
  def change
    change_column :quotes, :elevator_cost, :string
    change_column :quotes, :installation_cost, :string
    change_column :quotes, :total_cost, :string
  end
end
