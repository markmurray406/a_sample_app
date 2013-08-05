OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, "yb2obh6i9hnq", "8hb98zaRwgAg6FIS" 
end