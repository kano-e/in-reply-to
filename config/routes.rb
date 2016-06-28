Rails.application.routes.draw do
  resources :advices
  resources :worries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'worries#new'
end
