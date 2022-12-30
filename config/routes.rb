Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root  'home#index'

  get '/register', to: 'register#new'
  post '/register', to: 'register#create'

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  get '/logout', to: 'login#destroy'

  get '/profile/profile', to: 'profile#profile'
  get '/profile/portfolios', to:'profile#portfolios'


  get '/portfolio/new', to: 'portfolio#new'
  post '/portfolio/new', to: 'portfolio#create'
  get '/portfolio/tools/:id', to: 'portfolio#tools', as: 'portfolio'
  
  get '/tool/new', to: 'tool#new'
  post '/tool/new', to: 'tool#create'
  get '/tool/destroy/:id', to: 'tool#destroy', as: 'tool'
  

  

end
