Rails.application.routes.draw do
  resources :advices, only: [:index, :new, :show, :create]
  resources :worries, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'message#show'
end
