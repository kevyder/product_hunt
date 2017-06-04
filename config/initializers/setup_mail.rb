ActionMailer::Base.smtp_settings = {
  user_name: ENV['smtp_user'],
  password: ENV['smtp_password'],
  domain: 'localhost',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}

ActionMailer::Base.default_url_options[:host] = ENV['hostname']
