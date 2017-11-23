
Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :bunkers do
    collection do
      get 'index_host', as: "host"
    end
    resources :trips, only: [:new, :create]
  end


  resources :trips, only: [:update, :edit, :destroy, :show, :index] do
    member do
      get 'confirmation'
    end
  end

  resources :conversations do
    resources :messages
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

end







