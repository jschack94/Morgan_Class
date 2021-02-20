Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :clients

  resources :instructors, except: [:edit, :update]


  get '/login', to: 'sessions#new'


  get '/main', to: 'pages#main'

  get '/about', to: 'pages#about'

  get '/contact', to: 'pages#contact'



  get '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]

end