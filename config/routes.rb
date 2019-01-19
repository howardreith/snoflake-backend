# frozen_string_literal: true

Rails.application.routes.draw do

  # RESTful routes
  resources :examples
  resources :users
  resources :user_events_plans
  resources :events
  resources :user_groups_memberships
  resources :groups
  resources :group_comments
  resources :event_comments
  resources :group_invitations
  resources :event_invitations

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

end
