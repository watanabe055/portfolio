Rails.application.routes.draw do
  get 'categorise/index'
  get 'categorise/show'
  get 'homes/top'
  get 'homes/about'
  resources :clients, only: [:show, :edit, :update, :index, :destroy]
  get "clients/:id" => "client#show"
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :rooms, only: [:new,  :show, :index, :create]

  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
