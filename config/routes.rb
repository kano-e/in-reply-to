Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'

  resources :advices, only: [:new, :create]
  resources :worries, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'message#show'
end
