Rails.application.routes.draw do
  resources :winetypes
  resources :wines
  resources :wineries
  resources :beertypes
  resources :colours
  resources :breweries
  resources :beers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
