Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
post '/signup', to: 'users#create'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
resources :users, only: [:index, :show, :create, :update, :destroy]



end
