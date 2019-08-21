Rails.application.routes.draw do

  concern :api_base do
    resources :countries
    resources :reviews
    # This is custom route for scope
    get 'most_reviews', :to => 'countries#popular_country'
    get 'most_rates', :to => 'countries#satisfied_country'
    get 'random_place', :to => 'countries#suprising_country'
  end

  namespace :v1 do
    concerns :api_base
  end
end
