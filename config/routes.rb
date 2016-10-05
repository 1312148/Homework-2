Rails.application.routes.draw do  

 root 'users#new'
 get    '/',   to: 'sessions#new'
 post   '/',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'

resources :users do

end
 
end
