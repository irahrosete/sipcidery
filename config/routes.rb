Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
  resources :drinks
  resources :cideries

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
