class RemoveUnnessaryColumnsInAdminUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :admin_users, :reset_password_token
    remove_column :admin_users, :reset_password_sent_at
    remove_column :admin_users, :remember_created_at
  end

  def down
    add_column :admin_users, :reset_password_token, :string
    add_column :admin_users, :reset_password_sent_at, :datetime
    add_column :admin_users, :remember_created_at, :datetime
  end
end
