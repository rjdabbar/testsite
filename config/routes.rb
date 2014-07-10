TestSite::Application.routes.draw do
  

  root "home#index"

  resources :project, only: [:show],  param: :title, path: "/"
  resources :project
end
