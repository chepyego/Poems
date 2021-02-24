Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do    devise_for :users
    get 'articles/index'
    root 'pages#home'
    get 'pages/home'
    get 'pages/blog', to: 'pages#blog'


    resources :articles do
      resources :comments
    
   end
  end

  # end
  #  get 'articles/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
