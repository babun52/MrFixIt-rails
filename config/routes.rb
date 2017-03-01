Rails.application.routes.draw do
  root 'landing#index'
  devise_for :workers
  devise_for :users

  resources :jobs
  resources :workers
end
