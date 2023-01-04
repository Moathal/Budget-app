Rails.application.routes.draw do
  resources :transactions, only: [:create, :new, :show, :destory] 
  resources :categories, only: [:create, :new, :show, :destory]  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "categories#index"
end
