require 'graphql'
require 'pg'

module Types
  class QueryType < Types::BaseObject
    

    #  field :interventions, [Types::InterventionType], null: false
     def interventions
      Intervention.all
     end
    field :interventions, Types::InterventionType , null: false do
      argument :id, ID, required: true
    end
     def interventions(id:)
      Intervention.find(id)
     end


    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
  end
end
