module Queries
    class FetchFactInterventions < Queries::BaseQuery
  
      type [Types::FactInterventionType], null: false
  
    #   def resolve
    #     # FactIntervention.all
    #     FactIntervention.all.order(created_at: :desc)
    #   end
    end
  end