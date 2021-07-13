Rails.application.routes.draw do
  get 'participant/new'
  get 'participant/edit'
  get 'participant/show'
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

  resources :applications, :particpants
end 