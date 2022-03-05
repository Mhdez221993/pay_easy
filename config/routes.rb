Rails.application.routes.draw do
  authenticated :user do
    root to: 'categories#index', as: :authenticated_root
  end

  devise_for :users
  root 'splash#index'

  resources :categories
  resources :deals
end
