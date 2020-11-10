module Types
  class BatteryType < Types::BaseObject
    field :id, ID, null: false
    field :building_id, String, null: true
    field :type_of_building, String, null: true
    field :status, String, null: true
    field :employee_id, String, null: true
    field :commissioning_date, GraphQL::Types::ISO8601Date, null: true
    field :last_inspection_date, GraphQL::Types::ISO8601Date, null: true
    field :operations_certificate, String, null: true
    field :information, String, null: true
    field :notes, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :customer_id, Integer, null: true
  end
end
