Rails.application.routes.draw do
  
  root 'static_pages#home'
  #get 'static_pages/help'
  get '/help', to: 'static_pages#help'

  #get 'static_pages/about'
  get '/about', to: 'static_pages#about'

  #get 'static_pages/contact'
  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :microposts, only: [:create, :destroy]
end
