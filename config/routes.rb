TestSite::Application.routes.draw do
  
  resources :locations

  devise_for :admins
  root "home#index"
  get '/about' => 'home#about'

  get 'project/:url' => 'project#show', as: :projects

  resources :project 
  
  put 'project/:id/edit' => 'project#edit'
  # get '/we-build' => 'project#index'
  # resources :project, only: [:show],  param: :title, path: "/"

end
