Rails.application.routes.draw do
  get 'rooms/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'profile_edit', to: 'users/registrations#profile_edit', as: 'profile_edit'
    patch 'profile_update', to: 'users/registrations#profile_update', as: 'profile_update'
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root 'memories#index'
  resources :memories
  namespace :users do
    resources :searches, only: :index do
      collection do
        get "all_prefecture"
        get "prefecture_search"
      end
    end
  end

  resources :users, only: [:index, :show, :edit, :update] do
    member do
      get 'colection'
    end
  end
  resources :rooms, only: [:index ,:create, :show]
  resources :messages, only: :create
  resources :others, only: :index do
    collection do
      get "befor_search"
    end
  end

  put 'users/follow/:user_id' => 'users#follow'
  put 'users/unfollow/:user_id' => 'users#unfollow'

  get 'users/follow_list/:user_id' => 'users#follow_list'
  get 'users/follower_list/:user_id' => 'users#follower_list'

end
