Rails.application.routes.draw do
  resource :users, only: %i(new create)

  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end
  
  root 'products#index'
end
