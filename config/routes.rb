Rails.application.routes.draw do
  namespace :admin do
    resources :study_programs, except: [:show]

    root to: 'study_programs#index'
  end

  resources :subjects do
    resources :topics, only: [:new, :create, :edit, :update, :destroy]
    resources :templates, only: [:new, :create, :edit, :update, :destroy]
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
