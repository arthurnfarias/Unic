Rails.application.routes.draw do
  get 'historico/index'

  resources :agendamentos
  resources :estoques
  resources :pacientes 
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

end
