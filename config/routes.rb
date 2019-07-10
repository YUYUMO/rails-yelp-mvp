# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  # post 'restaurants/:restaurants_id/reviews', to: 'reviews#create'
  resources :restaurants, only: %i[index show create new] do
    resources :reviews, only: %i[new create]
  end
end
