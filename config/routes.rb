Rails.application.routes.draw do
  devise_for :users
  
  resources :companies do
    resources :people
  end

  get 'favorites' => 'companies#favorite'

  resources :favorite_companies, only: [:create]
  resources :favorite_people, only: [:create]

  root to: "companies#index"
end
