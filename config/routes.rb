Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/home')

  get 'home', to: 'branches#home', as: 'home'

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

  get 'ads', to: 'ads#index', as: 'ads'
  post 'ads', to: 'ads#create'
  get 'ads/new', to: 'ads#new', as: 'new_ad'
  
end
