Rails.application.routes.draw do
  post '/signup', to:  'users#create'
  post '/login', to: 'users#login'
  get '/users', to: 'users#index'



  resources :paintings

  resources :collections, only: [:index, :create, :show]

  resources :painting_collections, only: [:create]

end








# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
