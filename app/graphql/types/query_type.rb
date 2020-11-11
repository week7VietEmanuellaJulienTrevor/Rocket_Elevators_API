require 'graphql'
require 'pg'

module Types
  class QueryType < Types::BaseObject
    # field :fetch_factInterventions, [Types::FactInterventionType], null: false
    # field :all_customers, [CustomerType], null: false
    # def fetch_factInterventions
    #   FactIntervention.all.order(created_at: :desc)
    #   #'test'
    # end

    # field :fetch_factInterventions, resolver: Queries::FetchFactInterventions

    # field :all_links, [LinkType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    field :addresses, [Types::AddressType], null: false
    def addresses
      addresses.all
    end
    field :address, AddressType, null: false do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
    def address (id:)
      Address.find(id)
    end

  end
end
