Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :articles do
    resources :comments
  end

  root 'welcome#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
