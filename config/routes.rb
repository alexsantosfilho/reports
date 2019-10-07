Rails.application.routes.draw do
  resources :hobbies
  namespace :api do
    resources :users
  end
end
