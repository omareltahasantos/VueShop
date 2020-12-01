Rails.application.routes.draw do
  root to: 'home#index' # Add this line
  get 'home/index'
  resources :home
  resources :products
  resources :keyboards
  resources :mouses
  resources :mousepads
  resources :keycaps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
