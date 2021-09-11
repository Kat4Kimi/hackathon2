Rails.application.routes.draw do
  root 'users#index'

  resources :users do
    resources :trip1s
  end

  resources :trip1s do
    resources :locations
  end

  resources :locations do
    resources :addresses
  end
end

