Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :show]

  resources :users do
    resources :posts
  end

end
