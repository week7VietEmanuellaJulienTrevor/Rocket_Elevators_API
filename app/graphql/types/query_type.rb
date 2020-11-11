require 'graphql'
require 'pg'

module Types
  class QueryType < Types::BaseObject
    
    field :intervention, [Types::InterventionType], null: false
    def intervention
      intervention.all
    end
    field :intervention, InterventionType, null: false do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
    def address (id:)
      Address.find(id)
    end



    field :address, [Types::AddressType], null: false
    def address
      addresses.all
    end
    field :address, AddressType, null: false do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
    def address (id:)
      address.find(id)
    end


     field :building, [Types::BuildingType], null: false
    def building
      building.all
    end
    field :building, BuildingType, null: false do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
    def building (id:)
      building.find(id)
    end
   
    
     field :building_detail, [Types::BuildingDetailType], null: false
    def building_detail
      building_detail.all
    end
    field :building_detail, BuildingDetailType, null: false do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
    def building_detail (id:)
      building_detail.find(id)
    end
   
     

    

    field :customer, [Types::CustomerType], null: false
    def customer
      customer.all
    end
    field :customer, CustomerType, null: false do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
    def customer (id:)
      customer.find(id)
    end


    field :employee, [Types::EmployeeType], null: false
    def employee
      employee.all
    end
    field :employee, EmployeeType, null: false do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
    def employee (id:)
      employee.find(id)
    end
   

  end
end
