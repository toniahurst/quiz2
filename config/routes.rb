Rails.application.routes.draw do
  devise_for :users
  root 'titles#index'
  resources :titles
end
