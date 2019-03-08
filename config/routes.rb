# frozen_string_literal: true
Rails.application.routes.draw do
  use_doorkeeper
  jsonapi_resources :users, only: %w[create]

  jsonapi_resources :authors
  jsonapi_resources :ideas
  jsonapi_resources :quotes
  jsonapi_resources :sources

  root to: 'pages#welcome'
end
