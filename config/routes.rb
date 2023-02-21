Rails.application.routes.draw do
  get 'relguias/index'
  resources :guias
  devise_for :users
  resources :recebimentos
  resources :recursos
  resources :agendas do 
    collection do
      get :guias
    end
  end
  get 'agendas/index/lista', to: 'agendas#lista'
  resources :pacientes
  resources :clinicas
  resources :convenios
  resources :evolucao_tipos
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
