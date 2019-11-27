Rails.application.routes.draw do
  devise_for :users
  # maja test 
  resources :carts

  resources :items do
    resources :cart_item
  end
  root to: "items#welcome"
end
