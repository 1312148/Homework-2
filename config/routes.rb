Rails.application.routes.draw do  

 root 'static_pages#home'
 get    '/sessions/new',   to: 'sessions#new'
 post   '/sessions/new',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'

resources :users
resources :sessions
resources :statuses,          only: [:create, :destroy]

 
end
