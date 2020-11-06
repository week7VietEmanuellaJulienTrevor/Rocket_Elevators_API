class User < ApplicationRecord
    has_one :customer
    belongs_to :employee, optional: true
end
