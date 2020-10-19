class DeleteIsAdminAndUserEmployeeAssociation < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :user_admins_id
  end
end
