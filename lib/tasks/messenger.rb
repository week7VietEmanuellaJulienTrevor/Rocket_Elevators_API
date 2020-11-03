module Messenger
    class Twilio
        def send_sms(number)
            acct_sid = ENV['TWILIO_ACCT_SID']
            auth_token = ENV['TWILIO_AUTH']

            @client = Twilio::REST::Client.new acct_sid, auth_token

            from = ENV['TWILIO_PHONE']

            message = @client.account.messages.create(
                :from => from,
                :to => '+14388218911',
                :body => 'Elevator status has been changed to Intervention ' 
            )
        end 
    end
end
    