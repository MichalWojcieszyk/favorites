Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  
  resources :companies, only: [:index, :show, :favorite]
  resources :searches

  get 'favorites', to: 'companies#favorite'

  resources :favorite_companies, only: [:create, :destroy]
  resources :favorite_people, only: [:create, :destroy]

  root to: "companies#index"

  #devise_scope :user do
  #  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  #end
end
