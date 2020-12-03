Rails.application.routes.draw do
  devise_for :models
  devise_for :admins
  get 'borrows/index'
  get 'borrows/show'
  get 'borrows/new'
  get 'borrows/edit'
  get 'welcome/index'
  get 'members/index'
  get 'members/show'
  get 'members/new'
  get 'members/edit'
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/edit'
  get 'books/borrow'

  root 'welcome#index'
  resources :books
  resources :borrows
  resources :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
