Rails.application.routes.draw do
  
  resources :feeds do

    collection do
      post :confirm
      patch :confirm
    end

    member do
      patch :confirm  # confirm_feeds_pathの生成に必要
    end

  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
