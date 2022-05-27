Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # see all the lists
  get '/lists', to: 'lists#index'
  # show detail of a given list and name
  get '/lists/new', to: 'lists#new'
  post '/lists', to: 'lists#create'

  get '/lists/:id', to: 'lists#show', as: :list
  # new
  # create
end
