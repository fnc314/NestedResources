NestedResources::Application.routes.draw do
  get "comments/index"
  get "comments/new"
  get "comments/create"
  get "comments/show"
  get "posts/index"
  devise_for :users

  get '/posts', to: 'posts#index', as: :posts
  root to: 'posts#index'


  resources :posts do
  	resources :comments
  end
end
