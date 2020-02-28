Rails.application.routes.draw do
  post '/users', to:  'users#create'
  get '/users', to: 'users#index'

  resources :paintings

end








# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
