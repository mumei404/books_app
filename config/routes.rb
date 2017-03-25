Rails.application.routes.draw do
  get 'entries/index'

  get 'entries/show'
  get '/:id/entries', to: 'entries#index', as: 'entry'
  get 'entries/:id', to: 'entries#show', as: 'entry_show'

  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end
  

  get 'publishers/new'

  get 'books/new'

    root 'static_pages#home'
    get '/help', to: 'static_pages#help'
    get '/about', to: 'static_pages#about'
    get '/regist', to: 'books#new'
    #get '/publishers/:id', to: 'publishers#show'
    resources :books
    resources :publishers


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
