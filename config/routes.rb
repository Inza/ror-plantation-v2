Rails.application.routes.draw do
  get 'subjects/index'

  get 'subjects/show'

  get 'subjects/new'

  get 'subjects/edit'

  resources :tests

  root to: 'tests#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
