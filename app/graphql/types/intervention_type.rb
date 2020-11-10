module Types
  class InterventionType < Types::BaseObject
    field :building_address, Types::StringType, null: false
    field :start_date_intervention, Types::DateType, null: false
    field :end_date_intervention, Types::DateType, null: false
    field :customer_id, Types::IntegerType, null: false
  end
end
