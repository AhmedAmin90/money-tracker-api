Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :expenses
      resources :items
      
    end
  end
  resources :users 
  resources :sessions
  # devise_for :users
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
