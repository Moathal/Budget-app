Rails.application.routes.draw do
  devise_for :users
    resources :categories, only: [:index, :create, :new, :show, :destroy]  
    resources :transactions, only: [:index, :create, :new, :destroy] 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "splash_screen#index"
end
