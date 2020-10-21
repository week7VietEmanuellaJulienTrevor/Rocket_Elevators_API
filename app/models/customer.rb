class Customer < ApplicationRecord
    belongs_to :admin_user

    has_many :buildings
    def to_s
        "#{company_name}"
    end
end
