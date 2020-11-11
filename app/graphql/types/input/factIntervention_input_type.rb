module Types
    module Input
      class FactInterventionInputType < Types::BaseInputObject
        argument :employee_id, Integer, required: true
        argument :building_id, Integer, required: true
        argument :battery_id, Integer, required: false
        argument :column_id, Integer, required: false
        argument :elevator_id, Integer, required: false
        argument :start_date_intervention, Date, required: true
        argument :end_date_intervention, Date, required: true
        argument :result, String, required: true
        argument :report, String, required: true
        argument :status, String, required: true
      end
    end
  end