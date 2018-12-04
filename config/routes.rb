# frozen_string_literal: true

Rails.application.routes.draw do
  resources :events, except: %i[new edit]
  resources :user_groups_memberships, except: %i[new edit]
  resources :groups, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
