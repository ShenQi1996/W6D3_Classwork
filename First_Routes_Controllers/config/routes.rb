Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/users', to: 'users#index', as: 'users'
  # get '/users/:id', to: 'users#show', as: 'user'
  # post '/users', to: 'users#create', as: 'create_user'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # patch 'users/:id', to: 'users#update', as: 'patch_user'
  # put 'users/:id', to: 'users#update', as: 'put_user'
  # delete 'users/:id', to: 'users#destroy', as: 'delete_user'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  resources :users, only: [:create, :destroy, :index, :show, :update]
  resources :artworks, only: [:create, :destroy, :show, :update]
  resources :artwork_shares, only: [:create, :destroy]
  resources :users do
    resources :artworks, only: [:index]
  end
end
