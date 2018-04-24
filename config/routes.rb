Rails.application.routes.draw do
  root 'home#top'

  delete '/logout' => 'session#destroy'

  get '/about' => 'home#about'
  get '/works/index'=> 'works#index'
  post '/works/create' => 'works#create'
  get '/works/new' => 'works#new'
  get '/works/:id'=> 'works#show'
  get '/works/:id/edit' => 'works#edit'
  post '/works/:id/update' => 'works#update'
  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/users/:id' => 'users#show'


  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
