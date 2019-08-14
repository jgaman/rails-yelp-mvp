Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :restaurants, only: [:index]
  end
  resources :restaurants do
    collection do
    end
    member do
      get 'chef'
    end
    resources :reviews, only: [:new, :create] # Those routes needs restaurant_id
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
