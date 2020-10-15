ActiveAdmin.register Quote do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  permit_params :building_type, :no_of_appartments, :no_of_floors, :no_of_basements, :no_of_elevators_cages, :no_of_parking_spaces, :no_of_tenant_companies, :no_of_distinct_businesses, :max_occupants_per_floors, :num_elevators, :product_grade, :elevator_cost, :installation_cost, :total_cost

  
  index do
    selectable_column
    column :building_type
    column :num_elevators
    column :product_grade
    column :elevator_cost
    column :installation_cost
    column :total_cost
    #actions
  end

  filter :building_type
  filter :num_elevators
  filter :product_grade
  filter :elevator_cost
  filter :installation_cost
  filter :total_cost

end
