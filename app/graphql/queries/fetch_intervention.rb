module Queries
    class FetchInterventions < Queries::BaseQuery
  
      type [Types::InterventionType], null: false
  
      def resolve
        Intervention.all.order(created_at: :desc)
      end
    end
  end