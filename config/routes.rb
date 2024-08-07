Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index] do
    member do
      patch :set_admin
      patch :remove_admin
    end
  end
  
  # resources :projects
  resources :projects do
    resources :discussion_threads do
      resources :messages, only: [:new, :create, :edit, :update, :destroy]
    end
    resources :attachments, only: [:create, :destroy]
  end
 
  

  get 'home/index'
  
  get "up" => "rails/health#show", as: :rails_health_check

  # root "home#index"
  root "projects#index"
end
