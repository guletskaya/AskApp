Rails.application.routes.draw do
  root 'pages#home'
  resources :questions do 
    resources :answers, except: [:new, :show]
  end
  get "signup", to: "users#new"
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
