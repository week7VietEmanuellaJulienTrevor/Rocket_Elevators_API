class FactContact < ActiveRecord::Migration[5.2]
  def change
    create_table :factcontacts do |t|
      t.date :creation_date
      t.string :company_name
      t.string :email
      t.string :project_name
    end
  end
end
