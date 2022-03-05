Rails.application.routes.draw do
  resources :deals
  devise_for :users

  root 'splash#index'
end
