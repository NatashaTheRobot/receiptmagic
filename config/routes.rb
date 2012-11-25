Receiptmagic::Application.routes.draw do
  get "users/new"

  root to: "users#new"
  get "auth/google/callback" => 'sessions#create', as: 'google'
  get "/signout" => 'sessions#destroy', as: 'signout'
end
