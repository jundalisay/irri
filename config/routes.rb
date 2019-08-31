Rails.application.routes.draw do
  resources :crops
  resources :coconut1s
  resources :coffee1s
  resources :rice3s
  resources :rice2s
  resources :rice1s
  root to: 'crops#index'
  devise_for :users
  resources :plants
  resources :ratios  
end
