# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Setup Sendgrid
ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '587',
  authentication: :plan,
  user_name: Rails.application.credentials.sendgrid[:username],
  password: Rails.application.credentials.sendgrid[:password],
  domain: 'heroku.com',
  enable_starttls_auto: true
}
