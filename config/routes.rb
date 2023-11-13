Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'book#index'
  get 'books' => 'homes#index'
  post 'books' => 'homes#create'
  get 'books/:id' => 'homes#show'
  get 'books/:id/edit' => 'homes#edit', as: 'edit_book'
  patch 'books/:id' => 'homes#update', as: 'update_book'
  put 'books/:id' => 'homes#update'
  delete 'books/:id' => 'homes#destroy', as: 'destroy_book' 
end
