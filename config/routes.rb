Rails.application.routes.draw do
  resources :subjects do
    member do
      get 'topics/new', action: :new
      post 'topics/create', action: :create
      get 'topics/:topic_id/edit', action: :edit
      put 'topics/:topic_id/update', action: :update
      delete 'topic/:topic_id', action: :destroy
    end
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
