Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "beers#index"
  get "/beers", to: "beers#index"
  get "/beers/new", to: "beers#new"
  post "/beers", to:'beers#create'
  get "/beers/:id", to: "beers#show"
  get "/beers/:id/edit", to: 'beers#edit'
  patch "/beers/:id", to: 'beers#update'
  delete "/beers/:id", to: 'beers#destroy'
end
