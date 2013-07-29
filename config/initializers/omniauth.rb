Rails.application.config.middleware.use OmniAuth::Builder do
  configure do |config|
    config.path_prefix = '/auth'
  end
  provider :twitter, 'Sqq1aBEcINU95CPd1u7KSg', 'ANWSCyPwMhX0x23e2ODDmUotSCWn0YXFbhd8cIFQTo'
end
