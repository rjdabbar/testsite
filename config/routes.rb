TestSite::Application.routes.draw do
  

  root "home#index"

  resources :project,   param: :title, path: "/"

end
