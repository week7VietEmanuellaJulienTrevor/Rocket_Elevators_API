ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :first_name, :last_name, :title, :email

  index do
    selectable_column
    column :first_name
    column :last_name
    column :title
    column :email
    column :user_admins
    actions
  end

  filter :first_name
  filter :last_name
  filter :title
  filter :email

end
