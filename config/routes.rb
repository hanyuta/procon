Rails.application.routes.draw do
  devise_for :users

  root to: "schedules#index"

  resources :schedules

  resources :client_info_names, only: [:index ,:create ,:new]

  resources :process_machines, only: [:index ,:create ,:new] 

end
