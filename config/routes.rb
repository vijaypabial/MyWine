Rails.application.routes.draw do
  
  
  get 'orders/new'
  devise_for :users, path: "", path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get "my_wines", to: "wine_lists_items#index", as: "my_wines"
  get "our_wines", to: "vineyards#our_wines", as: "our_wines"
  resources :orders, only: [:new]
  resources :vineyards
  get "vineyards", to: "vineyards#index"
  get "wines", to: "wines#index"
  get "my_cart", to:"pages#my_cart"
  get "contact", to:"pages#contact"
  
  

  resources :wines do
    member do
      get :toggle_status
    end
  end
 
  
  root to: "pages#home"
end
