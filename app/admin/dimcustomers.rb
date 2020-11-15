ActiveAdmin.register Dimcustomer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :creation_date, :company_name, :full_name_of_company_main_contact, :email_of_company_main_contact, :nb_elevator, :contact_city
  #
  # or
  #
  # permit_params do
  #   permitted = [:creation_date, :company_name, :full_name_of_company_main_contact, :email_of_company_main_contact, :nb_elevator, :contact_city]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
