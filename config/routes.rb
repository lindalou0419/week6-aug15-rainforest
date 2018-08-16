Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destory'
  resource :users, only: %i(new create)

  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end
  
  root 'products#index'
end
