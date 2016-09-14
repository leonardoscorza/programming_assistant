Rails.application.routes.draw do
  post '/wikipedia' => 'assistant#wikipedia'
end
