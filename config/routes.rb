TestSite::Application.routes.draw do
  
  resources :locations

  devise_for :admins
  root "home#index"

  get 'project/:title' => 'project#show', as: :project

  # resources :project, only: [:show],  param: :title, path: "/"
  
  resources :project 

  get '/about' => 'home#about'

  # get '/we-build' => 'project#index'


end
