Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :expenses
      resources :items
    end
  end
  resources :users , only: [:index , :show, :create, :destroy]
  resources :sessions
  root "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
