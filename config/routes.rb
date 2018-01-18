Rails.application.routes.draw do
  root to: 'pages#home'


  devise_for :users

  resources :photos, only: [:destroy]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  get "about" => "pages#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
