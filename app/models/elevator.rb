
class Elevator < ApplicationRecord
    belongs_to :column
    belongs_to :customer
    
    before_update :slack_notifier

end
