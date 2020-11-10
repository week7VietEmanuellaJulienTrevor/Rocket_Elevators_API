module Types
  class ElevatorType < Types::BaseObject
    field :id, ID, null: false
    field :serial_number, String, null: true
    field :model, String, null: true
    field :type_of_building, String, null: true
    field :status, String, null: true
    field :commissioning_date, GraphQL::Types::ISO8601Date, null: true
    field :last_inspection_date, GraphQL::Types::ISO8601Date, null: true
    field :inspection_certificate, String, null: true
    field :information, String, null: true
    field :notes, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :column_id, Integer, null: true
    field :customer_id, Integer, null: true
  end
end
