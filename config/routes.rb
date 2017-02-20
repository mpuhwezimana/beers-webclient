Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "beers#index"
  get "/beers", to: "beers#index"
  get "/beers/new", to: "beers#new"
  get "/beers/:id", to: "beers#show"
end
