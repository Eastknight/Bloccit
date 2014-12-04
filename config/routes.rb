Rails.application.routes.draw do

  devise_for :users
  resources :user, only: [:update]
#  resources :posts
#  resources :topics
# nest posts to topics

  resources :topics do
    resources :posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

 
end
