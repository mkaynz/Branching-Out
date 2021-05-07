Rails.application.routes.draw do

  devise_for :users
  get 'home', to: 'branches#home', as: 'home'
  root to: redirect('/home')

  resources :conversations do
    resources :messages
  end
  

  get 'plants', to: 'plants#index', as: 'plants'
  post 'plants', to: 'plants#create'
  get 'plants/new', to: 'plants#new', as: 'new_plant'
  get 'plants/:id/edit', to: 'plants#edit', as: 'edit_plant'
  get 'plants/:id', to: 'plants#show', as: 'plant'
  patch 'plants/:id', to: 'plants#update'
  delete 'plants/:id', to: 'plants#destroy'

  get 'plants/:plant_id/reviews', to: 'reviews#index', as: 'plant_reviews'
  post 'plants/:plant_id/reviews', to: 'reviews#create'
  get 'plants/:plant_id/reviews/new', to: 'reviews#new', as: 'new_plant_review'
  patch 'plants/:plant_id/reviews.:id', to: 'reviews#update'
  put 'plants/:plant_id/reviews.:id', to: 'reviews#update'
  get 'plants/:plant_id/reviews/:id/edit', to: 'reviews#edit', as: 'edit_plant_review'

  get 'plants/:plant_id/ads', to: 'ads#show', as: 'choose'
  post 'plants/:plant_id/ads', to: 'ads#create'
  get 'plants/:plant_id/ads/new', to: 'ads#new', as: 'new_ad'


  get 'ads', to: 'ads#index', as: 'ads'

  get 'checkout', to: 'checkouts#index', as: 'checkout' #route for the checkout enopara
  
  
  get 'posts', to: 'posts#index', as: 'posts'
  post 'posts', to: 'posts#create'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  get 'posts/:id', to: 'posts#show', as: 'post'

  get 'posts/:post_id/comments', to: 'comments#index', as: 'post_comments'
  get 'posts/:post_id/comments/new', to: 'comments#new', as: 'new_post_comment'
  post 'posts/:post_id/comments', to: 'comments#create'
end
