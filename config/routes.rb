Rails.application.routes.draw do
  resources :push_notifications, only: [:create], defaults: { format: :json }
  resources :post_notifications, only: [:create], defaults: { format: :json }

  resources post 'user',               only: [:create], defaults: { format: :json }
  resources get 'girls',               only: [:index], defaults: { format: :json }
  resources 'girls' do
    resources 'messages'
  end
  resources get 'response_candidates', only: [:index], defaults: { format: :json }

end
