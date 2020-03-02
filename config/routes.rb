Rails.application.routes.draw do
  post '/users', to:  'users#create'
  get '/users', to: 'users#index'

  resources :paintings

  resources :collections, only: [:index, :create, :show]

  resources :painting_collections, only: [:create, :index]

end








# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
