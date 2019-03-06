Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get 'complete/:id', to: 'posts#complete', as: 'post_complete'
  get 'incomplete/:id', to: 'posts#incomplete', as: 'post_incomplete'
  root 'posts#index'
end
