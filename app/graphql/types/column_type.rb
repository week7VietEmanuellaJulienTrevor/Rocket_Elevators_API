module Types
  class ColumnType < Types::BaseObject
    field :id, ID, null: false
    field :type_of_building, String, null: true
    field :number_of_floors_served, Integer, null: true
    field :status, String, null: true
    field :information, String, null: true
    field :notes, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :battery_id, Integer, null: true
    field :customer_id, Integer, null: true
  end
end
