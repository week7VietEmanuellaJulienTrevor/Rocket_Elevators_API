class Building < ApplicationRecord
    has_many :batteries
    def to_s
        "#{address_of_the_building}"
    end

    belongs_to :customer
   

end
