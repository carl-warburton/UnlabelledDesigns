Rails.application.routes.draw do
  resources :products, except: [:show]
  get 'illustrated-series', to: 'products#illustrated'
  get 'products/:id', to: 'products#show', as: 'product_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :blogs do
    member do
      get :toggle_status
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

end


