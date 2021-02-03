Rails.application.routes.draw do
  
  get 'articles/index'
  root 'pages#home'
  get 'pages/home'
  get 'pages/Blog'

  # scope '(:locale)' do
    resources :articles do
      resources :comments

  # end

  end
  #  get 'articles/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
