# require './lib/tasks/messenger.rb'
require 'twilio-ruby'

class Elevator < ApplicationRecord
    belongs_to :column
    belongs_to :customer
    after_save :send_sms

    def send_sms()
        acct_sid = ENV['TWILIO_ACCT_SID']
        auth_token = ENV['TWILIO_AUTH']

        @client = ::Twilio::REST::Client.new acct_sid, auth_token

        from = ENV['TWILIO_PHONE']
        to = "+14388218911"
        body = ''

        if self.status.downcase == 'intervention'
            body = "The Elevator " + (self.id).to_s + " with Serial Number * " + (self.serial_number).to_s + " * changed status to intervention"
        end

        message = @client.messages.create(
            :from => from,
            :to => to,
            :body => body
        )
    end
    
end
