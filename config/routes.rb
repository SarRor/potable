Rails.application.routes.draw do

  root "home#inicio"
  resources :pagos, only: [:create]
  devise_for :users, controllers: { registrations: "registrations"}
  resources :usuarios

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
