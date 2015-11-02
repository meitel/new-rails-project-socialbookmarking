ActionMailer::Base.smtp_settings = {
  port:              587, 
  address:           'smtp.mailgun.org',
  user_name:         'postmaster@appa5d71aae30ff4b3c8eb0d6286e275d76.mailgun.org',
  password:          'ab0f1fd75928f04ccf58fd4e6605e8a4', 
  domain:            'https://api.mailgun.net/v3/appa5d71aae30ff4b3c8eb0d6286e275d76.mailgun.org',
  authentication:    :plain,
  content_type:      'text/html'
}
ActionMailer::Base.delivery_method = :smtp

# Makes debugging *way* easier.

ActionMailer::Base.raise_delivery_errors = true

