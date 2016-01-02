Rails.application.routes.draw do
  devise_for :admin_users

  root 'admin_tools/tops#index'

  namespace :admin_tools do
    resources :tops, only: [:index]
    resources :users, only: [:index]
    resources :girls
  end

  resources :post_notifications, only: [:create], defaults: { format: :json }

  resources 'users', only: [:create], defaults: { format: :json }

  resources 'girls', only: [:index], defaults: { format: :json } do
    resources 'response_candidates', only: [:index], defaults: { format: :json }
    resources 'messages', only: [:index, :create, :update], defaults: { format: :json }
  end
end
