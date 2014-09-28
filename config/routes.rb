TestSite::Application.routes.draw do
  
  # resources :locations

  devise_for :admins


  root "home#index"
  get '/about' => 'home#about'

  get 'new' => 'project#new'
  get 'project/:url' => 'project#show', as: :projects
  get 'project/:url/edit' => 'project#edit', as: :project_edit
  put 'project/:url/edit' => 'project#update'
  get 'project/:url/delete' => 'project#delete', as: :project_delete

  resources :project, :except => :new
  
  # get '/we-build' => 'project#index'
  # resources :project, only: [:show],  param: :title, path: "/"

end
