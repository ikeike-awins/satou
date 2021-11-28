Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'

end
