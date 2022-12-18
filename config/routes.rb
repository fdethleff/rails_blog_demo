Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  get '/u/:id', to: 'users#profile', as: 'user'
  resources :posts
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'posts#index'
end
