Rails.application.routes.draw do
  get 'locations/new'

  get 'locations/create'

  get 'locations/edit'

  get 'locations/update'

  devise_for :users
  resources :bunkers
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
