Rails.application.routes.draw do
  resources :tests

  root to: 'tests#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
