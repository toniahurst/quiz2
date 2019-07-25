Rails.application.routes.draw do
  root 'titles#index'
  resources :titles
end
