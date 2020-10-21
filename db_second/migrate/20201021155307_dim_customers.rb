class DimCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :dimcustomers do |t|
      t.date :creation_date
      t.string :company_name
      t.string :full_name_of_company_main_contact
      t.integer :nb_elevator
      t.string :building_city
  
      t.timestamps
    end
  end
end
