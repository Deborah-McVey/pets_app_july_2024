Rails.application.routes.draw do
  get 'home/index'
  resources :pets
  
  get 'home/about'
  # Defines the root path route ("/")
   root "home#index"
end
