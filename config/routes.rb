# config/routes.rb
Rails.application.routes.draw do
  resources :notes
  resources :users, param: :_email
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end