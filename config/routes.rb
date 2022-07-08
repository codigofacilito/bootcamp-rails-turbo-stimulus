Rails.application.routes.draw do
  resources :phone_numbers
  resources :people
  resources :contacts
  root "contacts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
