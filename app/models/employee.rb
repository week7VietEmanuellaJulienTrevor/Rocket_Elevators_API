class Employee < ApplicationRecord
    has_many :batteries
    def display_name
        "#{first_name} #{last_name}"
    end
    has_many :admin_users
end
