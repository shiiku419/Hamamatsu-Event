Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "welcome#index"
  # Defines the root path route ("/")
  # root "articles#index"
  get '/welcome', to: "welcome#index"
  get '/login', to: "login#index"
end
