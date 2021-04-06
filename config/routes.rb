Rails.application.routes.draw do

  devise_for :users
  get 'home', to: 'branches#home', as: 'home'
  root to: redirect('/home')

  get 'ads', to: 'ads#index', as: 'ads'
  get 'ads/new', to: 'ads#new', as: 'new_ad'
  
end
