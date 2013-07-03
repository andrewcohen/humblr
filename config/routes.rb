Humblr::Application.routes.draw do
  root to: "static#index"
  resources :posts
end
