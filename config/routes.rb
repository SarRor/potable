Rails.application.routes.draw do
  resources :usuarios
  get 'home/inicio'
root "home#inicio"
devise_for :users, controllers: { registrations: "registrations"}
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
