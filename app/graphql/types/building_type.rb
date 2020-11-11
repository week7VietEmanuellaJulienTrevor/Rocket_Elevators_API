module Types
  class BuildingType < Types::BaseObject
      field :building_details, [BuildingDetailType], null: false
      field :customer, CustomerType, null: false
      field :address, AddressType, null: false
      field :building_administrator_full_name, String, null: false
      field :building_administrator_email, String, null: false
      field :building_administrator_phone, String, null: false
      field :building_technical_contact_name, String, null: false
      field :building_technical_contact_email, String, null: false
      field :building_technical_contact_phone, String, null: false
      field :interventions, [InterventionType], null: true
      
  end
end
