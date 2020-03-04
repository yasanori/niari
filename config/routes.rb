Rails.application.routes.draw do
  get 'rooms/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'profile_edit', to: 'users/registrations#profile_edit', as: 'profile_edit'
    patch 'profile_update', to: 'users/registrations#profile_update', as: 'profile_update'
  end

  root 'memories#index'
  resources :memories
  resources :users, only: [:index, :show, :edit, :update] do
    member do
      get 'colection'
    end
  end
  resources :rooms, only: [:index ,:create, :show]
  resources :messages, only: :create

  put 'users/follow/:user_id' => 'users#follow'
  put 'users/unfollow/:user_id' => 'users#unfollow'

  get 'users/follow_list/:user_id' => 'users#follow_list'
  get 'users/follower_list/:user_id' => 'users#follower_list'

end
