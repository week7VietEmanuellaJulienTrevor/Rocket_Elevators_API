class Customer < ApplicationRecord
    belongs_to :admin_user

    has_many :buildings
    def display_name
        "#{company_name}"
    end
    belongs_to :address
    has_many :quotes
    def full_name
        "#{company_name}"
    end
end
