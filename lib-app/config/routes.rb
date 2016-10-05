Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: 'bloggers#index'

    get '/bloggers', to: 'bloggers#index'
    get '/bloggers/new', to: 'bloggers#new', as: 'new_blogger'
  post '/bloggers', to: 'bloggers#create'
  get '/bloggers/:id', to: 'bloggers#show', as: 'blogger'

  get '/login', to: 'sessions#new'
 get '/logout', to: 'sessions#destroy'
 post '/sessions', to: 'sessions#create'


end
