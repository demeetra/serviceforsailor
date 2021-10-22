Rails.application.routes.draw do
  resources :subscribers
  resources :posts do
	   resources :comments
  end
  get 'about/index'
  get 'promo/index'
  get 'posts/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'

  root 'promo#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
