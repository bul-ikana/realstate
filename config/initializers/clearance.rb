Clearance.configure do |config|
  config.mailer_sender = "reply@example.com"
  config.rotate_csrf_on_sign_in = true
  config.allow_sign_up = false
  config.user_model = User
  config.redirect_url = "/admin"
end
