Rails.application.routes.draw do
  devise_for :users
  
  resources :companies do
    resources :people
  end

  get 'favorites' => 'companies#favorite'

  resources :favorite_companies, only: [:create, :destroy]
  resources :favorite_people, only: [:create, :destroy]

  root to: "companies#index"
end
