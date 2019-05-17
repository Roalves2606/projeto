Rails.application.routes.draw do
  resources :medicos
  root 'medicos#index'  
  get 'medicos/index'
  get 'medicos/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
