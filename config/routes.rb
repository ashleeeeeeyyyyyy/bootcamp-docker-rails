Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/new'
  # get 'users/edit'
  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'

  # post 'users/new', to: 'users#create'
  
  resources :users, only: [:index, :new, :edit, :create, :update, :destroy]
end
