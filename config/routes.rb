Rails.application.routes.draw do
  default_url_options :host => 'http://localhost:3000/'
  # get '/posts', to: 'post#index'
  # post '/posts', to: 'post#show'
  resources :posts
end