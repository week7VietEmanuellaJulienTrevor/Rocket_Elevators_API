class SendgridMailer
    def self.send(to, subsitutions, template_id)
      puts subsitutions
      data = {
        "personalizations": [
          {
            "to": [
              {
                "email": to
              }
            ],
            "dynamic_template_data": subsitutions
          }
        ],
        "from": {
          "email": 'judup13@gmail.com'
        },
        "template_id": template_id
      }
      sg = SendGrid::API.new(api_key: ENV['sendgrid_api_key'])
      begin
        response = sg.client.mail._("send").post(request_body: data)
        return response.status_code
      rescue Exception => e
        puts e.message
      end
    end
  end