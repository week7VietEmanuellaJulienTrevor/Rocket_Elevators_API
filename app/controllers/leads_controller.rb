require 'uri'
require 'net/http'
require 'openssl'

class LeadsController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  #before_action :set_lead, only: [:show, :edit, :update, :destroy]

  def new
    @lead = Lead.new
    respond_to do |format|
        format.html #index.html.erb
        format.json {render json: @lead}
    end
  end

  def index
    @leads = Lead.all
  end

  def show
    @lead = Lead.find(params(:lead))
    send_data(@lead.file_contents,
              type: @lead.content_type,
              filename: @lead.filename)
  end

  def create
    p params
    p lead_params
    @lead = Lead.new(lead_params)

    respond_to do |format|

      if @lead.save
        format.html { redirect_to root_path, notice: "Save process completed!" }
        format.json { render json: @lead, status: :created, location: @lead }

        #---------------JULIEN TEST START----------------
        #response = Unirest.post "https://rapidprod-sendgrid-v1.p.rapidapi.com/mail/send",
        #headers:{
          #"X-RapidAPI-Host" => "#{ENV["sendgrid_api_host"]}",
          #"X-RapidAPI-Key" => "#{ENV["sendgrid_api_key"]}",
          #"Content-Type" => "application/json"

        #}
        #"{"personalizations":[{"to":[{"email":"judup13@gmail.com"}],"subject":"Hello, World!"}],"from":{"email":"info@rocketelevators.ca"},"content":[{"type":"text/plain","value":"Hello, World!"}]}"
        #---------------JULIEN TEST END------------------

        #---------------JULIEN TEST START----------------
        url = URI("https://rapidapi.p.rapidapi.com/mail/send")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Post.new(url)
        request["content-type"] = 'application/json'
        request["x-rapidapi-key"] = ENV["sendgrid_api_key"]
        request["x-rapidapi-host"] = ENV["sendgrid_api_host"]
        request.body = "{
            \"personalizations\": [
                {
                    \"to\": [
                        {
                            \"email\": \"judup13@gmail.com\"
                        }
                    ],
                    \"subject\": \"Hello, World!\"
                }
            ],
            \"from\": {
                \"email\": \"judup13@gmail.com\"
            },
            \"content\": [
                {
                    \"type\": \"text/plain\",
                    \"value\": \"Hello, World!\"
                }
            ]
        }"

        response = http.request(request)
        #---------------JULIEN TEST END2-----------------

      else
        format.html { 
            flash.now[:notice]="Save proccess coudn't be completed!" 
            render :new 
        }
        format.json { render json: @lead.errors, status: :unprocessable_entity}
      end
    end
  end


  private
    def lead_params
      params.require(:leads).permit(:contact_full_name, :company_name, :email, :phone, :project_name, :project_description, :department, :message, :attached_file, :created_at)
    end

end
