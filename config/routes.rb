Rails.application.routes.draw do
  resources :fashions
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
    resources :users do
             resources :posts
          end
  get 'pages/about'
  get 'pages/contact'
  get 'pages/privacy'

  root 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
