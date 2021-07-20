Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs
  post 'songs/new', to: "songs#create"
  post 'songs/:id/edit', to: "songs#update"
end
