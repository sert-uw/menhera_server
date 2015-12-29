Rails.application.routes.draw do
  resources :post_notifications, only: [:create], defaults: { format: :json }

  resources 'users', only: [:create], defaults: { format: :json }

  resources 'girls', only: [:index], defaults: { format: :json } do
    resources 'response_candidates', only: [:index], defaults: { format: :json }
  end
end
