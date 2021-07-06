Rails.application.routes.draw do
  resources :users
  resources :programs
  resources :applications

  #sessions 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 
  post '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  
  root 'welcome#welcome'

  resources :users do 
    resources :programs, only: [:index, :new, :create]
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
