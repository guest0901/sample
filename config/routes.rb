Rails.application.routes.draw do
  resources :posts
end
Rails.application.routes.draw do
  resources :messages
  #get 'home/top'
  #get '/' => 'home#top'
  root :to => 'home#top'
  
end
