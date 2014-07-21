# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Backend::Application.configure do
	config.action_mailer.delivery_method = :smtp

	config.action_mailer.smtp_settings = {
		address: 				"smtp.gmail.com",
		port: 					"587",
		domain: 				"gmail.com",
		authentication: "plain",
		user_name: 			"jacob.juul",
		password: 			"tDf%2012",
		enable_starttls_auto: true
		}
	end

	ActionMailer::Base.smtp_settings = {
		address: 				"smtp.gmail.com",
		port: 					"587",
		domain: 				"gmail.com",
		authentication: "plain",
		user_name: 			"jacob.juul",
		password: 			"tDf%2012",
		enable_starttls_auto: true
		}
