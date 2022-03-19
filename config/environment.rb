# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# setting for account email verification. This is general settings. see config/enviroment/development and production for addional settings
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => '587',
  :authentication => :plain,
  :user_name => Rails.application.credentials[:gmail][:username],
  :password => Rails.application.credentials[:gmail][:password],
  :domain => 'gmail.com',
  :enable_starttls_auto => true
} 
