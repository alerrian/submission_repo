Rails.application.routes.draw do
  root "welcome#index"

  get '/search', to: 'search#index', as: 'food_search'
end
