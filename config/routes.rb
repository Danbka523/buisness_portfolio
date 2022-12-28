Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root  'home#index'

  get '/register', to: 'register#new'
  post '/register', to: 'register#create'
  
end
