Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
    resources :posts do
      resources :comments
    end
  # end





  root 'posts#index'

  # get 'users/' => 'users#index'
  # get 'users/new' => 'users#new', as: :new_user
  # post 'users/' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  # get 'posts/' => 'posts#index'
  # post 'posts/' => 'posts#create'
  # get 'posts/new' => 'posts#new', as: :new_post
  # # get 'posts/:id' => 'posts#show', as: :post
  # # get 'posts/:id/edit' => 'posts#edit', as: :edit_post
  # patch 'posts/:id' => 'posts#update'
  # delete 'posts/:id' => 'posts#destroy'

end
