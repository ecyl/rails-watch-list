Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # see all the lists
  # get '/lists', to: 'lists#index'
  # # new
  # # create
  # get '/lists/new', to: 'lists#new', as: :new_list
  # post '/lists', to: 'lists#create'
  # # show detail of a given list and name
  # get '/lists/:id', to: 'lists#show', as: :list
  # add a new bookmark (movie/list) pair
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  # delete bookmark
  resources :bookmarks, only: [:show, :destroy]
end
