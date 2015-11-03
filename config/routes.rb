Rails.application.routes.draw do
  get 'bookmarks/show'

  get 'bookmarks/new'

  get 'bookmarks/edit'

 
  devise_for :users
  get 'topics/index'

  get 'topics/about'

 root to: 'topics#index'

 post :incoming, to: 'incoming#create'
end
