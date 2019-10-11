# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :hobbies
  end
  namespace :reports  do
    resources :reports do
      member do 
        post 'build'
      end
    end
  end
end
