require 'slack-notifier'


class Elevator < ApplicationRecord
    belongs_to :column
    belongs_to :customer
    
    before_update :slack_notifier


    def slack_notifier
        if self.status_changed?
        notifier = Slack::Notifier.new ENV["SLACK_API_WEBHOOK_URL"]  do
        defaults channel: "#elevator_operations",
        username: "Emma"
        end

    notifier.ping "The Elevator #{self.id} with Serial Number #{self.serial_number} changed status from #{self.status_was} to #{self.status}"
    end
end
end
  

