Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    root to: 'users/registrations#new'
  end

  namespace :users, path: '' do
    resources :users, only: [:show]
  end

  namespace :companies, path: '' do
    resources :categories, only: :index do
      resources :companies, only: [:index]
    end
  end
end
