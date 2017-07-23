Rails.application.routes.draw do
  resources :products, except: [:show]
  get 'products/:id', to: 'products#show', as: 'product_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

end


