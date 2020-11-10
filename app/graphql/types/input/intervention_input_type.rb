module Types
    module Input
      class InterventionInputType < Types::BaseInputObject
        argument :building_address, String, required: true
        argument :start_date_intervention, Date, required: true
        argument :end_date_intervention, Date, required: true
        argument :customer_id, Integer, required: true
      end
    end
  end