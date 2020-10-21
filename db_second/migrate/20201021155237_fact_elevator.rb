class FactElevator < ActiveRecord::Migration[5.2]
  def change
    create_table :factelevator do |t|
      t.string :serial_number
      t.string :date_of_commissioning
      t.string :building_city
     
      t.timestamps
    end
  end
end
