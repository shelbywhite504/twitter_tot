Rails.application.routes.draw do
  get 'epicenter/fee'

  get 'epicenter/show_user'

  get 'epicenter/now_following'

  get 'epicenter/unfollow'

  resources :tweets

  root 'tweets#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
