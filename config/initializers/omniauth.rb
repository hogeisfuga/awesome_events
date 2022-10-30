Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "620024e733c3535e925b", "0e0d181fb2058d7149b3696898a283074fed6127"
  else
    Rails.application.credentials.github[:client_id]
    Rails.application.credentials.github[:client_secret]
  end
end