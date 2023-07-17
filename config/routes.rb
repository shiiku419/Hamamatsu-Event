Rails.application.routes.draw do
  get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "welcome#index"
  get '/welcome', to: "welcome#index"

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  
  get '/profile', to: 'profile#index'

  get '/newpost', to: 'dashboards#index'

  get '/dashboard', to: 'favorite#_btn'

  get '/posts', to: 'posts#index'

  post '/search', to: 'welcome#search'

  resources :posts, only: [:index, :show, :edit, :create, :destroy, :update] do
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :dashboards, only: [:create, :new]
end
