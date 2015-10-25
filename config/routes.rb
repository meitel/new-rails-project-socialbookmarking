Rails.application.routes.draw do
  devise_for :users
  get 'topics/index'

  get 'topics/about'

 root to: 'topics#index'
end
