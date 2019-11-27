Rails.application.routes.draw do
  devise_for :users
  # maja test 
  resources :carts
  resources :cart_item

  resources :items
  root to: "items#index"
end
