Rails.application.routes.draw do
  resources :meetings
  get 'home/index'
  get 'home/dashboard'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
