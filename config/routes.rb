Rails.application.routes.draw do
  root 'pages#home'
  resources :questions do 
    resources :answers, except: [:new, :show]
  end
end
