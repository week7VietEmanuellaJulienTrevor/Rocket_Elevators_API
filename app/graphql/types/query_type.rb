require 'graphql'
require 'pg'

module Types
  class QueryType < Types::BaseObject
    

   field :interventions, [Types::InterventionType], null: false
     def interventions
      Intervention.all
     end

     field :addresses, [Types::AddressType], null: false
     def addresses
      addresses.all
     end
   
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
  end
end
