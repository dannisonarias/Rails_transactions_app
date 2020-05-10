# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :groups, only: %i[index new show]
  resources :groups do
    resources :transactions, only: [:index]
  end
  resources :users do
    resources :transactions, only: %i[index show create new]
  end
  devise_scope :user do
    # for authenticated users we have root as user/show
    authenticated :user do
      root 'users#show', as: :authenticated_root
    end

    unauthenticated do
      # for unathenticated users we have root as landing_page/new
      root 'landing_page#new', as: :unauthenticated_root
    end
  end
end
