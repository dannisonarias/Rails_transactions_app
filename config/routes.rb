Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :groups
  resources :groups do
    resources :transactions, only:[:index]
  end
  resources :users do
    resources :transactions, only:[:index,:show,:create,:new]
  end
  devise_scope :user do
    
    authenticated :user do
      root 'users#show', as: :authenticated_root
    end
  
    unauthenticated do
      root 'landing_page#new', as: :unauthenticated_root
    end

  end
end
