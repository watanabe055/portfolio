Rails.application.routes.draw do
  #get 'categorise/index'
  #get 'categorise/show'
  get 'homes/top'
  get 'homes/about'
  get 'homes/unsubscribe'
  get 'homes/help'
  get 'rooms/search' => 'rooms#search'

  resources :clients, only: [:show, :edit, :update, :index, :destroy]
  get "clients/:id" => "client#show"
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  devise_scope :user do
    post 'users/sign_up/confirm' => 'users/registrations#confirm'
    post 'users/sign_up/complete' => 'users/registrations#complete'
  end

  resources :rooms, only: [:new,  :show, :index, :create]

  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
