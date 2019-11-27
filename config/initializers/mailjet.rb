require 'mailjet'

Mailjet.configure do |config|
  config.api_key = ENV['MAILJET_LOGIN']
  config.secret_key = ENV['MAILJET_PWD']
  config.api_version = "v3.1"
  config.default_from = 'fontaine.ladislas@gmail.com'
end