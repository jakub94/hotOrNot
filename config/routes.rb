Rails.application.routes.draw do
  resources :feed
  resources :images
  resources :ratings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'feed#show'
end
