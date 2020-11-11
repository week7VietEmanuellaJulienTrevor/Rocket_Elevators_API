module Types
    class CustomerType < BaseObject
      field :company_name, String, null: false
      field :company_headquarter_address, String, null: false
    #   field :battery_id, Integer, null: true
    #   field :column_id, Integer, null: true
    #   field :elevator_id, Integer, null: true
    #   field :start_date_intervention, Types::DateType, null: false
    #   field :end_date_intervention, Types::DateType, null: true
    #   field :result, String, null: false
    #   field :report, String, null: false
    #   field :status, String, null: false
    end
  end
