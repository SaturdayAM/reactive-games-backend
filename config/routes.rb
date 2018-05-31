Rails.application.routes.draw do
  resources :games
  resources :scores
  resources :users

  post '/signin', to: 'auth#signin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
