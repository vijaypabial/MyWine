Rails.application.routes.draw do
  resources :vineyards
  resources :orders, only: [:new]
  devise_for :users, path: "", path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  get 'orders/new'
  get 'orders/cancel', to:'wines#index'
  get 'orders/complete', to: 'orders#complete'
  
  post "my_wines", to: "wine_lists_items#create", as: "my_wines"
  get "my_wines", to: "wine_lists_items#index"
  get "our_wines", to: "vineyards#our_wines", as: "our_wines"
 
  get "vineyards", to: "vineyards#index"
  get "wines", to: "wines#index"
  get "contact", to:"pages#contact"

  resources :wines do
    member do
    get :toggle_status
    end
  end
 
  
  root to: "pages#home"
end
