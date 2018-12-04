Rails.application.routes.draw do
  devise_for :users
  resources :comics do
  	resources :comments, only: [:show, :create, :destroy]
    collection do
      get 'search'
    end
  end
  root 'comics#index'
end
