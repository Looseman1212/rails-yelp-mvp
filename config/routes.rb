Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # view a list of all restaurants
  # get 'restaurants', to: 'restaurants#index'
  # # enter info about a new restaurant and add it to database
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # # see the details of an individual restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :single_restaurant
  # # enter a review about a restaurant and add it to database
  # post 'restaurants/:id/reviews/new', to: 'reviews#create'
  # get 'restaurants/:restaurant_id/reviews', to: 'reviews#new', as: :new_restaurant_review

  resources :restaurants do
    resources :reviews, only: [:create, :new]
  end
  resources :reviews, only: :destroy
end
