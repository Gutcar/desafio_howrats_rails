Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/new'
  get 'pages/search', to: 'pages#search', as: 'search'
  
  post 'characters' => 'pages#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
