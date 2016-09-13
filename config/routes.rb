Rails.application.routes.draw do
  post '/facebook_bot' => 'bot#facebook'
end
