Rails.application.routes.draw do
  resources :subjects do
    resources :topics, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :tests do
    collection do
      get 'generate_new/:subject_id', action: :generate_new, as: :generate_new
      post 'generate/:template_id', action: :generate, as: :generate
    end
  end

  root to: 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
