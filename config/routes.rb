Rails.application.routes.draw do
  namespace :admin do
    resources :users
    # resources :cideries
    # resources :drinks

    root to: "users#index"
  end

  devise_for :users
  devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "pages#index"
  get "/saved", to: "pages#saved"
  get "/add", to: "pages#add"
  get "/contact", to: "pages#contact"
  get "/random", to: "drinks#random"
  resources :drinks do
    put :saved, on: :member
  end

  resources :cideries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
