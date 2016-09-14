Rails.application.routes.draw do
  post '/messenger' => 'assistant#messenger'
end
