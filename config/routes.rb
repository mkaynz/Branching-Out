Rails.application.routes.draw do
  devise_for :users
  get 'home', to: 'branches#home', as: 'home'
  root to: redirect('/home')
end
