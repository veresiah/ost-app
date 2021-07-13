Rails.application.routes.draw do
  root 'welcome#welcome'
  
  #sessions 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'

  #auth
  get '/auth/:provider/callback' => 'sessions#omniauth'

  resources :users, except: [:index] do 
    resources :programs, shallow: true 
  end
end 