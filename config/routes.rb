Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :circles
  post '/circles/ids', to: 'circles#index_ids'

  get 'genres', to: 'genres#index'
end
