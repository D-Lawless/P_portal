Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  match '/users/:id',     to: 'users#show',       via: 'get'
  resources :users, :only =>[:show]
  resources :events
  root "events#index"

end
