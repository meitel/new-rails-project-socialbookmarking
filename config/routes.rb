Rails.application.routes.draw do
 
 get 'bookmarks/new'
 get 'bookmarks/edit'
 get 'bookmarks/show'
   
   devise_for :users
   get 'topic/index'
   resources :topics
 
   root to: 'topics#index'
 
   post :incoming, to: 'incoming#create'
 end

