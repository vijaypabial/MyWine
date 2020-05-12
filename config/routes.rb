Rails.application.routes.draw do
  resources :wines
  get 'pages/home'
  get 'pages/vineyards'
  get 'pages/wines'
  get 'pages/my_cart'
  get 'pages/contact'
  resources :vineyards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
