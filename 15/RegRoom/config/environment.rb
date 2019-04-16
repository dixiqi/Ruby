# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RegRoom::Application.initialize!
ActionMailer::Base.delivery_method=:smtp
ActionMailer::Base.default_charset="UTF-8"
ActionMailer::Base.smtp_settings={
    :address=>"smtp.foxmail.com",
    :port=>25,
    :domain=>"foxmail.com",
    :user_name=> "somboy",
    :password=> "123456",
    :authentication=> :login
}