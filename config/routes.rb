Rails.application.routes.draw do

  resources :favorites
  resources :assign_details
  resources :assignation_stocks
  resources :memorandums
  resources :user_trainings
  resources :trainings
  resources :memorandum_types
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
end
