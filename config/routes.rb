Rails.application.routes.draw do
  
  resources :feeds do
    collection do
      post :confirm
      patch :confirm
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
