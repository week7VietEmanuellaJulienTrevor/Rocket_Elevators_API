require 'types/mutation_type'
class RocketAppSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
