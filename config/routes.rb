TestSite::Application.routes.draw do
  
  # resources :locations

  devise_for :admins

  root "home#index"

  get '/we-are' => 'home#about', as: :about
  get '/we-do'  => 'project#index', as: :project_home
  
  get 'new' => 'project#new'
  get 'project/:url' => 'project#show', as: :projects
  get 'project/:url/edit' => 'project#edit', as: :project_edit
  put 'project/:url/edit' => 'project#update'
  get '/project/:url/delete' =>  'project#destroy'

  resources :project, :except => :new
  
  # get '/we-build' => 'project#index'
  # resources :project, only: [:show],  param: :title, path: "/"

end
