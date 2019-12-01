Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  namespace :user do
  	root :to => "impacts#index"
  end
  resources :impacts
  resources :items
end
