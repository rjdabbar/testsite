TestSite::Application.routes.draw do
  

  resources :locations

  devise_for :admins
  root "home#index"

  # resources :project, only: [:show],  param: :title, path: "/"
   resources :project 

  get 'project/:id' => 'project#show', as: :title
  get "/about" => "home#about"

end
