Rails.application.routes.draw do

  devise_for :users

  resources :users
  resources :donations

  # admin namespace for sinesh
  namespace :admin do
    resources :donations
  end
  # You can have the root of your site routed with "root"
  root 'public#index'

end
