
Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :bunkers do
    resources :trips, only: [:create]
  end

  resources :trips, only: [:update, :edit, :destroy, :show, :index]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
mount Attachinary::Engine => "/attachinary"

end







