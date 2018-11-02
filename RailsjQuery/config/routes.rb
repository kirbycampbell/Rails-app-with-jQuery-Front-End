Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :engineers
  resources :pilots
  resources :rockets
  resources :admins
  root 'static#index'
end
