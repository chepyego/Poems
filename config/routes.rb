Rails.application.routes.draw do
  
  get 'articles/index'
  root 'pages#home'
  get 'pages/home'
  get 'pages/Blog'
  resources :articles do
    resources :comments

  end
  #  get 'articles/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
