Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/about', to: 'about#index'
  get '/area_of_practice', to: 'area_of_practice#index'
  get '/testimonials', to: 'testimonials#index'
  get '/location', to: 'location#index'
  post '/location', to: 'location#create', as: 'create_email'
  resources :users
  resources :dashboard
  resources :sessions

  post '/dashboard/handle_request', to: "dashboard#handle_request", as: "create_entry"

end
