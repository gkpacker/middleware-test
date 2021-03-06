Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
      end
    end
  end

  get 'pages/home'

  root to: 'pages#home'
end
