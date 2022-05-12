Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  resources :games do
    resources :bookings, only: [ :index, :new, :create, :edit, :update ]
  end
  resources :bookings, only: [ :show, :destroy ]
  resources :users, only: [ :show ]
end
