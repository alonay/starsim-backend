Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'
      post '/signUp', to: 'auth#signUp'
      get '/current_gamer', to: 'auth#show'
    end
  end

  resources :hot_keys
  resources :profiles
  resources :gamers
end
