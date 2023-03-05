Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "results#index"

  resources :participants
  resources :scores
  resources :grand_slums
  get "results/:id", to: "results#show", as: "result"

end
