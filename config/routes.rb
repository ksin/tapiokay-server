Rails.application.routes.draw do
  namespace :api do
    resources :shops
    resources :reviews
    resources :users
  end
end
