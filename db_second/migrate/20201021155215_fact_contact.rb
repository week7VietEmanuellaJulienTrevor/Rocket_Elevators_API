class FactContact < ActiveRecord::Migration[5.2]
  def change
    create_table :factcontact do |t|
      t.date :creation_date
      t.string :company_name
      t.string :email
      t.integer :project_name
  
      t.timestamps
    end
  end
end
