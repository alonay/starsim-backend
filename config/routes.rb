Rails.application.routes.draw do
  resources :hot_keys
  resources :hot_keysrs
  resources :profiles
  resources :gamers

  post "/auth", to: "auth#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
