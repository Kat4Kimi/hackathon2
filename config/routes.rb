  Rails.application.routes.draw do
    mount_devise_token_auth_for 'User', at: 'api/auth'
    namespace :api do
  
      resources :users do
        resources :pets 
      end
      
      resources :pets do
          resources :activities
      end
  
      resources :activities do
        resources :appointments
      end
    end
  end