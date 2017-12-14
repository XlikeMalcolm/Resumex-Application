Rails.application.routes.draw do
  resources :skills
  resources :portfolios
  resources :interests
  resources :educations
  resources :experiences
  resources :expertises
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root 'users#index'
  get '/signup' => 'users#new'	
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
