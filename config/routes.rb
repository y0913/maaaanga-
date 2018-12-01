Rails.application.routes.draw do
  devise_for :users
  resources :comics do
    collection do
      get 'search'
    end
   end
  root 'comics#index'
end
