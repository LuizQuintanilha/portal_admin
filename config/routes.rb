Rails.application.routes.draw do
  root 'homes#index'
  resources :alunos, only: [:new, :show, :create]
  get 'alunos/show'
  post 'alunos/new'
  get 'homes/index'
  resources :matriculas, only: [:new, :show, :index, :create]
  get 'matriculas/show'
  post 'matriculas/show'
  get 'matricula/new'
  post 'matriculas/new'
  get 'matriculas/index'
  post 'matriculas/index'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
