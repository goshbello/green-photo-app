# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# setting for account email verification. This is general settings. see config/enviroment/development and production for addional settings
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address:             'smtp.gmail.com',
  port:                 587,
  authentication:      'plain',
  #domain:              'gmail.com',
  user_name:            Rails.application.credentials[:gmail][:username],
  password:             Rails.application.credentials[:gmail][:password],
  enable_starttls_auto: true
} 
