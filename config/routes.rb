Rails.application.routes.draw do
  get 'lending/index'
  resources :categories
  devise_for :users
  resources :subscribers
  resources :posts do
    resources :comments
    resources :likes
    resources :favorites
  end
  get 'about/index'
  get 'promo/index'
  get 'posts/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  get 'lending', to: 'lending#index'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'


  root 'lending#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
