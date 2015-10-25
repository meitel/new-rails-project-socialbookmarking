Rails.application.routes.draw do
  get 'topics/index'

  get 'topics/about'

 root to: 'topics#index'
end
