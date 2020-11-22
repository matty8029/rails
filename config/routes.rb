Rails.application.routes.draw do
  resources :youtube_urls
  resources :validation_tests
  get 'static/index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
