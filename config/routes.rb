Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'users/registrations' }

  devise_scope :user do
    get 'register', to: 'users/registrations#new', as: :signup
    get '/users/sign_out', to: 'users/sessions#destroy'
  end

  resources :posts, only: [:new, :create, :index]

  root to: "posts#index"
end
