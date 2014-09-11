TestSite::Application.routes.draw do
  

  devise_for :admins
  root "home#index"

  resources :project, only: [:show],  param: :title, path: "/"
  resources :project
end
