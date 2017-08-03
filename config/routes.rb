Rails.application.routes.draw do
  get 'user/login/:email', to: 'user#login'
  resources :user, only:[:show]
  resources :item, only:[:index]
  resources :transaction, only:[:create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
