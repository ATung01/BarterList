Rails.application.routes.draw do
  get 'user/login', to: 'user#login'
  resources :user, only:[:show]
  resources :item, only:[:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
