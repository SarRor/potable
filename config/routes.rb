Rails.application.routes.draw do

  root "home#inicio"
  resources :pagos, path_names: { new: 'nuevo', edit: 'editar' }
  devise_for :users, controllers: { registrations: "registrations"}
  resources :usuarios, path_names: { new: 'nuevo', edit: 'editar' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
