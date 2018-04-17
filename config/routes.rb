Rails.application.routes.draw do
  root 'home#top'
  get '/about' => 'home#about'
  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'
  get 'works/index'=> 'works#index'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
