Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/about', to: 'about#index'
  get '/area_of_practice', to: 'area_of_practice#index'
  get '/testimonials', to: 'testimonials#index'
  get '/location', to: 'location#index'

end
