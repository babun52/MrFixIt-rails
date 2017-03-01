Rails.application.routes.draw do
  root 'landing#index'
  devise_for :workers
  devise_for :users

  resources :jobs
  resources :workers do
    get 'active/:job_id', to: 'workers#update_active', as: 'active'
  end
end
