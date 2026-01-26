Rails.application.routes.draw do

  root "pages#index"

  resources :members
  resources :services
  resources :posts

  get "about",            to: "pages#about"
  # get "blog",             to: "posts#index" 
  # get "members",          to: "members#index"
  # get "members/new",      to: "members#new"
  # post "members",         to: "members#create"
  # get "members/:id",      to: "members#show",    as: "member"
  # get "members/:id/edit", to: "members#edit",    as: "edit-member"
  # get "services",         to: "services#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
