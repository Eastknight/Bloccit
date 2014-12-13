Rails.application.routes.draw do

  get 'comments/create'

  devise_for :users
  resources :users, only: [:update]
#  resources :posts
#  resources :topics
# nest posts to topics

  resources :topics do
    resources :posts, except: [:index] do
    end
  end

  resources :post, only: [] do 
    resources :comments, only: [:create, :destroy]
      resources :favorites, only: [:create, :destroy]
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end



  get 'about' => 'welcome#about'

  root to: 'welcome#index'

 
end
