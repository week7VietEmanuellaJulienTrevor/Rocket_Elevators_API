class Employee < ApplicationRecord
    has_many :batteries
    def display_name
        "#{first_name} #{last_name}"
    end
    belongs_to :admin_user
end
