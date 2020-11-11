module Types
  class FactInterventionType < BaseObject
    field :employee_id, Integer, null: false
    field :building_id, Integer, null: false
    field :battery_id, Integer, null: true
    field :column_id, Integer, null: true
    field :elevator_id, Integer, null: true
    field :start_date_intervention, Types::DateType, null: false
    field :end_date_intervention, Types::DateType, null: true
    field :result, String, null: false
    field :report, String, null: false
    field :status, String, null: false
  end
end
