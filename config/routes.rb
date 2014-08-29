Rails.application.routes.draw do

  root :to => 'location#index'

  resources :vendors

  resources :location

end
