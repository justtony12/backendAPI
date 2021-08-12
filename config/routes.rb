Rails.application.routes.draw do
  default_url_options :host => 'http://localhost:3000'
  resources :posts
end