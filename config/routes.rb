Rails.application.routes.draw do
  resources :games
  devise_for :users
  root to: "home#rankings"
  get '/history',  to: 'home#history'
  get '/log',      to: 'home#log'
end
