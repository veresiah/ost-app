Rails.application.routes.draw do
  #sessions 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'

  #auth
  get '/auth/facebook/callback' => 'sessions#create_using_facebook'
  
  root 'welcome#welcome'
  
  resources :users
  resources :programs
  resources :applications

  resources :users do 
    resources :programs, only: [:index, :new, :create]
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
