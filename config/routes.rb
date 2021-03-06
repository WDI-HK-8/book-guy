Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root 'static_pages#index'

  resources :books
  resources :requests, only: [:create, :index]

  get 'mybooks',  to: 'books#index_my_books'
end
