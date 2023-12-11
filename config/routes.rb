Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/oauth/callback', to: 'home#create_session'
  post :logout, to: 'home#destroy_session'
end
