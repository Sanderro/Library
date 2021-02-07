Rails.application.routes.draw do
  devise_for :members
  devise_for :admins
  resources :books, :borrows, :members

  get 'borrows/index'
  get 'borrows/show'
  get 'borrows/new'
  get 'borrows/edit'
  get 'welcome/index'
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/edit'
  get 'books/borrow'

  root to: 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
