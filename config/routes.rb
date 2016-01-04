Rails.application.routes.draw do
  resources :players do 
    collection do
      get 'song1'
      get 'song2'
      get 'song3'
    end
  end
  get '/like/:song_id', to: 'players#like'
  get '/dashboard', to: 'players#dashboard'
  
  root 'players#song1'
end
