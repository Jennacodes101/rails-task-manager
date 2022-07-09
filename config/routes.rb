Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list tasks (read_all)
  root to: 'tasks#index'
  get 'index', to: 'tasks#index'
  # place new first because it has more constrains than show
  get 'index/new', to: 'tasks#new', as: 'new'
  # read indvidual
  get 'index/:id', to: 'tasks#show', as: 'show'
  # create
  post 'index/new', to: 'tasks#create'
  # update
  get '/index/:id/edit', to: 'tasks#edit', as: 'edit'
  patch '/index/:id/edit', to: 'tasks#update'
  # delete
  delete '/index/:id', to: 'tasks#destroy', as: 'destroy'
end
