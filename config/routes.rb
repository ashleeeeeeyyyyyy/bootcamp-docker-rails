Rails.application.routes.draw do
  devise_for :users
  # get 'users/index'
  # get 'users/new'
  # get 'users/edit'
  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'

  # post 'users/new', to: 'users#create'
  devise_scope :user do
    get "/signout", to: "devise/sessions#destroy", as: :signout
  end
  
  resources :users, only: [:index, :new, :edit, :create, :update, :destroy]
end
