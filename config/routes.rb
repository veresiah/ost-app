Rails.application.routes.draw do
  resources :users
  resources :programs
  resources :applications

  #sessions 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
