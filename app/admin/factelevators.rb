ActiveAdmin.register Factelevator do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :serial_number, :date_of_commissioning, :building_id, :customer_id, :building_city
  #
  # or
  #
  # permit_params do
  #   permitted = [:serial_number, :date_of_commissioning, :building_id, :customer_id, :building_city]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
