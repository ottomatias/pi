Obtvse::Application.routes.draw do

  # Admin
  match '/admin', to: 'posts#admin', as: 'admin', via: 'get'
  get 'logout' => 'sessions#destroy', as: 'logout'

  get '/posts(.:format)', to: 'posts#index'
  get '/posts.rss', to: 'posts#index', as: 'rss'

  resources :users
  resources :sessions
  resources :posts, path: '/'

  get '/:slug', to: 'posts#show', as: 'post_'

  root to: 'posts#index'

end