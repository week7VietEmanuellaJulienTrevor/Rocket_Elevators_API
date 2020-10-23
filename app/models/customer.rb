class Customer < ApplicationRecord
    belongs_to :admin_user

    has_many :buildings
    def display_name
        "#{company_name}"
    end

    belongs_to :address
    belongs_to :employee

    has_many :admin_users
    has_many :quotes, through: :admin_users
end
