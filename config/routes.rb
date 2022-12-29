Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root  'home#index'

  get '/register', to: 'register#new'
  post '/register', to: 'register#create'

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  get '/logout', to: 'login#destroy'

  get '/profile', to: 'profile#profile'
  get '/portfolio/new', to: 'portfolio#new'
  post '/portfolio/new', to: 'portfolio#create'

  
end
