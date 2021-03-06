Rails.application.routes.draw do

  get 'items/create'

  devise_for :views
  devise_for :users do
    resources :items, only: [:new, :create, :destroy]
  end

  resources :items

  get 'users/show'
  get 'welcome/index'
  get 'about' => 'welcome#about'

  root 'users#show'
end