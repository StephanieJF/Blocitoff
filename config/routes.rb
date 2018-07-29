Rails.application.routes.draw do

  devise_for :views
  devise_for :users

  get 'users/show'
  get 'welcome/index'
  get 'about' => 'welcome#about'

  root 'users#show'
end