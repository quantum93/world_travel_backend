Rails.application.routes.draw do
  resources :reviews
  resources :countries
  # This is custom route for scope
  get 'most_reviews', :to => 'countries#popular_country'
  get 'most_rates', :to => 'countries#satisfied_country'
  get 'random_place', :to => 'countries#suprising_country'
end
