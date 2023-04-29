class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.dig(:sendgrid, :from)
  layout "mailer"
end
