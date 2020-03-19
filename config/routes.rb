Rails.application.routes.draw do
  
  resources :artist_instruments, only: [:new, :create]
  resources :artists, only: [:show, :index, :new, :create]

  # get "/artist_instruments/new", to: 'artist_instruments#new', as: "new_artist_instrument"
  # post "/artist_instruments", to: 'artist_instruments#create', as: "artist_instrument"
end
