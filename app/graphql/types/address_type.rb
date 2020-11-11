module Types
    class AddressType < Types::BaseObject
      field :id, ID, null: false
      field :address_type, String, null: false
      field :status, String, null: false
      field :entity, String, null: false
      field :street_number_name, String, null: false
      field :apartment_number, String, null: false
      field :city, String, null: false
      field :state_province, String, null: false
      field :postal_code, String, null: false
      field :country, String, null: false
      field :notes, String, null: false
    end
  end