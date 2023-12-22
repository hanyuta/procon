Rails.application.routes.draw do
  devise_for :users

  root to: "schedules#index"

  resources :schedules do
    collection do
      get 'api_data'
    end
  end

  resources :client_info_names, only: [:index ,:create ,:edit ,:update]

  resources :clients_info, only: [:index , :create]

  resources :process_machines, only: [:index ,:create]

end
