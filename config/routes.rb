Rails.application.routes.draw do
 
   devise_for :users
   resources :users, only: [:update, :show, :index]
 
   resources :topics do
   resources :bookmarks, except: [:index]
   end
 
   post :incoming, to: 'incoming#create'
   
   get 'about' => 'bookmarks#show'
 
   root to: 'bookmarks#show'
 end
