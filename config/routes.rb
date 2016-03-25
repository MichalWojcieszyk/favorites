Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  
  resources :companies, only: [:index, :show, :favorite] do
  	resources :company_comments
  end
  resources :searches

  get 'favorites', to: 'companies#favorite'

  resources :favorite_companies, only: [:create, :destroy]
  resources :favorite_people, only: [:create, :destroy]

  root to: "companies#index"
end
