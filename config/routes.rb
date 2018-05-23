Rails.application.routes.draw do

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
  get 'backup/select_file'
  post "/home/change_style", :as => :change_style
  post "/backup/restore", :as => :backup_restore
  resources :favorites
  resources :assign_details
  resources :assignation_stocks
  resources :memorandums
  resources :user_trainings
  resources :trainings
  resources :memorandum_types

  resources :user_trainings
  resources :trainings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, only: [:session, :registration], path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  devise_scope :user do
    resources :people
    resources :civil_states
    authenticated :user do
      root to: 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root to: 'home#home', as: :unauthenticated_root
    end
  end

  resources :stocks
  resources :stock_categories
  post 'backup/index', :as => :backup_index
#Calling a controller method from a button in rails
  post 'logs/download', as: :log_download
end
