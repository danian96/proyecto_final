Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, only: [:session, :registration], path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  devise_scope :user do
    resources :people
    resources :civil_states
    resources :stocks
    resources :stock_categories
    post 'backup/index', :as => :backup_index
    post 'logs/download', as: :log_download
    resources :psicologic_evaluations
    resources :tecnic_evaluations
    resources :annunments
    resources :appli_details
    resources :convocatories
    resources :designations
    resources :departaments
    get 'ayuda/index'
    get 'logs/index'
    get 'logs/index'
    get 'home/permissions'
    get 'backup/select_file'
    post "/home/change_style", :as => :change_style
    post "/backup/restore", :as => :backup_restore
    post "/home/change_perm", :as => :home_change_perm
    resources :favorites
    resources :assign_details
    resources :assignation_stocks
    resources :memorandums
    resources :user_trainings
    resources :trainings
    resources :memorandum_types
    resources :user_trainings
    resources :trainings

    authenticated :user do
      root to: 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root to: 'home#home', as: :unauthenticated_root
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users
      #resources :sessions, only: [:create, :destroy]
      post '/sessions/create', to: 'sessions#create'
      delete '/sessions/destroy', to: 'sessions#destroy'
      # get '/branch_offices/', to: 'branch_offices#index'
      # get '/branch_offices/show/:id', to: 'branch_offices#show'
      # get '/branch_offices/areas/:id', to: 'branch_offices#branch_offices_areas'
      # post '/branch_offices/place_ticket/', to: 'branch_offices#place_ticket'
    end
  end
end
