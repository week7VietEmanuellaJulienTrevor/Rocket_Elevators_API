require './lib/tasks/messenger.rb'

class Elevator < ApplicationRecord
    belongs_to :column
    belongs_to :customer
    after_update :send_sms

    def send_sms()
        status = self.status
        if status == 'intervention'
            twiliosms = Messenger::Twilio.new 
            twiliosms.send_sms
        end
    end
    
end
