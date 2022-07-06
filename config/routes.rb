Rails.application.routes.draw do
  devise_for :users
  root to: "sessions#new"
  resources :categories do
    resources :articles do
      resources :comments
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
