Rails.application.routes.draw do

  devise_for :users
  get 'home', to: 'branches#home', as: 'home'
  root to: redirect('/home')

  get 'ads', to: 'ads#index', as: 'ads'
  post 'ads', to: 'ads#create'
  get 'ads/new', to: 'ads#new', as: 'new_ad'
  
  get 'posts', to: 'posts#index', as: 'posts'
  post 'posts', to: 'posts#create'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  get 'posts/:id', to: 'posts#show', as: 'post'

  get 'posts/:post_id/comments', to: 'comments#index', as: 'post_comments'
  get 'posts/:post_id/comments/new', to: 'comments#new', as: 'new_post_comment'
  post 'posts/:post_id/comments', to: 'comments#create'
end
