module Types
  class BuildingDetailType < Types::BaseObject
     field :building_id, ID, null: false
      field :value, String, null: false
  end
end
