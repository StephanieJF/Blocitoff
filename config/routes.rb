Rails.application.routes.draw do
  get 'users/show'

  devise_for :views
  devise_for :users

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
