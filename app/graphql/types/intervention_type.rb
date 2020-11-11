module Types
  class InterventionType < Types::BaseObject
    field :id, ID, null: false
    field :employee_ID, ID, null: false
    field :building, BuildingType, null: false
    field :battery_id, Int, null: true
    field :column_id, Int, null: true
    field :elevator_ID, Int, null: true
    field :start_date_time_intervention, String, null: false
    field :end_date_time_intervention, String, null: false
    field :result, String, null: false
    field :report, String, null: true
    field :status, String, null: false
  end
end
