Rails.application.routes.draw do
  root to: 'static#index'

  resources :parkings
  resources :parking_slots
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
