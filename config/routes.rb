Rails.application.routes.draw do

  get '/' => 'home#top'
  get 'sign_up' => 'users#new'
  get 'about' => 'home#about'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
