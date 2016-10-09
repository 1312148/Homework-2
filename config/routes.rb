Rails.application.routes.draw do  

 root 'static_pages#home'
 get    '/sessions/new',   to: 'sessions#new'
 post   '/sessions/new',   to: 'sessions#create'

 delete '/logout',  to: 'sessions#destroy'

resources :users do
    member do
      get :following, :followers
    end
end


resources :sessions
resources :statuses do
	resources :comments,          only: [:create, :destroy]
 end

resources :relationships,       only: [:create, :destroy]

end
