Rails.application.routes.draw do
  resources :pets
  
  get 'home/about'
  # Defines the root path route ("/")
   root "pets#index"
end