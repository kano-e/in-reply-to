Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', name: :signout

  resources :advices, only: [:new, :create]
  resources :worries, only: [:index, :show, :new, :create]
  resources :my_worries, path: '/my/worries', only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'message#show'
end
