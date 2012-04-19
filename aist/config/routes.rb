Aist::Application.routes.draw do
  resources :posts

  get "pages/about"

  get "pages/actions"

  get "pages/thanks"

 root :to => "pages#home"

  get "pages/home"

end
