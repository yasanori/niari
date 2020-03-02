Rails.application.routes.draw do
  get 'rooms/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'memories#index'
  resources :memories
  resources :users, only: [:index, :show, :edit, :update]
end
