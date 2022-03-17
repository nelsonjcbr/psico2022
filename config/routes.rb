Rails.application.routes.draw do
  resources :recebimentos
  resources :recursos
  resources :agendas
  resources :pacientes
  resources :clinicas
  resources :convenios
  resources :evolucao_tipos
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
