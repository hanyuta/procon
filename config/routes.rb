Rails.application.routes.draw do
  devise_for :users

  root to: "schedules#index"

  resources :schedules

  resources :client_info_names, only: [:index ,:create ,:edit ,:update]

  resources :process_machines, only: [:index ,:create]
end
