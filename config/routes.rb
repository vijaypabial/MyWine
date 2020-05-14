Rails.application.routes.draw do
  resources :wines
  resources :vineyards
  get 'vineyards', to: "vineyards#index"
  get 'wines', to: "wines#index"
  get "my_cart", to:'pages#my_cart'
  get 'contact', to:'pages#contact'
  
  root to: "pages#home"
end
