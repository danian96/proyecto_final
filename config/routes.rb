Rails.application.routes.draw do

<<<<<<< HEAD
  get 'ayuda/index'
=======
  get 'logs/index'
>>>>>>> 0eb9281b8c53db9e247f79b432b6f1e5b8eaa379

  resources :favorites
  resources :assign_details
  resources :assignation_stocks
  resources :memorandums
  resources :user_trainings
  resources :trainings
  resources :memorandum_types
<<<<<<< HEAD
  
=======
  resources :user_trainings
  resources :trainings
>>>>>>> 0eb9281b8c53db9e247f79b432b6f1e5b8eaa379
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
