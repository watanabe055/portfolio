Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :clients, only: [:show, :edit, :update, :index, :destroy]

  get 'homes/top'
  get 'homes/about'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/users', to: redirect("/users/sign_up")#sign_upの更新遷移防止

  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
