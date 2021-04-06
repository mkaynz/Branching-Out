Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/home')

  get 'home', to: 'branches#home', as: 'home'

  get 'ads', to: 'ads#index', as: 'ads'
  get 'ads/new', to: 'ads#new', as: 'new_ad'
  
end
