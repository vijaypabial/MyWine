Rails.application.routes.draw do
  
  devise_for :users
  resources :vineyards
  get 'vineyards', to: "vineyards#index"
  get 'wines', to: "wines#index"
  get "my_cart", to:'pages#my_cart'
  get 'contact', to:'pages#contact'

  resources :wines do
    member do
      get :toggle_status
    end
  end
  
  root to: "pages#home"
end
