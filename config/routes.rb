Rails.application.routes.draw do
  #sessions 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'

  #auth
  #get '/auth/facebook/callback' => 'sessions#create_using_facebook'
  get '/auth/:provider/callback' => 'sessions#omniauth'
  
  root 'welcome#welcome'
  
  resources :users, except: [:index]
  resources :users do 
    resources :programs, shallow: true
  end 

  resources :programs do 
    resources :applications, shallow: true
  end 
end 
