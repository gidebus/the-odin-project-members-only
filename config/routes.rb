Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'users/registrations' }

  devise_scope :users do
    get 'register', to: 'users/registrations#new', as: :signup
  end

  resources :posts, only: [:new, :create, :index]

  root to: "posts#index"
end
