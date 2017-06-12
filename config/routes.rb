Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :blogs
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'blogs#index'

end


