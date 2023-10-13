Rails.application.routes.draw do
  get 'books/index' =>'books#index'
  post 'books/index' =>'books#create'
  get 'books/:id' => 'books#show'
  get 'books/edit'
  get '/' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
