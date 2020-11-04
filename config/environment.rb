# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#To delete (Sendgrid Renmant)
# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV['my_email'],
#   :password => ENV['sendgrid_api_key'],
#   :domain => 'gmail.com',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }