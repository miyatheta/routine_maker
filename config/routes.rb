Rails.application.routes.draw do

  get '/' => 'home#top'
  get '/about' => 'home#about'
  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
