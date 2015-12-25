Rails.application.routes.draw do
  resources :push_notifications, only: [:create], defaults: { format: :json }
  resources :post_notifications, only: [:create], defaults: { format: :json }
end
