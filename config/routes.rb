Receiptmagic::Application.routes.draw do
  get "users/new"
  resources :users

  root to: "users#new"
  get "auth/google/callback" => 'sessions#create', as: 'google'
end
