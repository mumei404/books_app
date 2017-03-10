Rails.application.routes.draw do
  get 'books/new'

    root 'static_pages#home'
    get '/help', to: 'static_pages#help'
    get '/about', to: 'static_pages#about'
    get '/input', to: 'books#new'
    resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
