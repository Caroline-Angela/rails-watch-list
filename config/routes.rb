Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
   resources :lists do
   resources :bookmarks, only: [:new, :create, :destroy]
   end
   resources :bookmarks, only: [:show] # to be checked

  # resources :movies, only: [:show] # to be checked

    # get '/lists', to: 'lists#index'
    # post '/lists', to: 'lists#create'
    # get '/lists/new', to: 'lists#new'
    # get '/lists/:id', to: 'lists#show'
    # get '/lists/:id/edit', to: 'lists#edit'
    # delete '/lists/:id', to: 'lists#destroy'

    # get '/lists/:list_id/bookmarks', to: 'bookmarks#new'
    # post '/lists/:list_id/bookmarks', to: 'bookmarks#create'
    # delete '/list/:list_id/bookmarks/:id', to: 'bookmarks#destroy'

    # get '/lists/:list_id/bookmarks/movies', to: 'movies#show'
end
