Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  root to: 'homes#index'

  namespace :admin do
    resources :products, only: [:new, :create, :index, :show, :edit, :update]
  end
  namespace :public do
    resources :products, only: [:index, :show]
  end

end
