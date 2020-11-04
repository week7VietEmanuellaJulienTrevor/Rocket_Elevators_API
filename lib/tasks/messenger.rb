# require 'twilio-ruby'

# module Messenger
#     class Twilio
#         def send_sms
#             acct_sid = ENV['TWILIO_ACCT_SID']
#             auth_token = ENV['TWILIO_AUTH']

#             @client = ::Twilio::REST::Client.new acct_sid, auth_token

#             from = ENV['TWILIO_PHONE']
#             to = "+14388218911"

#             message = @client.messages.create(
#                 :from => from,
#                 :to => to,
#                 # :body => 'Elevator status has been changed to Intervention' 
#                 if @Elevator[:status] == 'intervention'
#                 :body => ("The Elevator " + @Elevator[:id] + " with Serial Number " + @Elevator[:serial_number] + " changed status from "+ @Elevator.find[:status_was] + " to " + @Elevator.find[:status]).to_s
#                 end
#             )
#         end 
#     end
# end
    