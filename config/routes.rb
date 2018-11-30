Rails.application.routes.draw do
  namespace :admin do
      resources :projects
      resources :properties
      resources :users

      root to: "projects#index"
    end
end
