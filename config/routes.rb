Rails.application.routes.draw do
  scope defaults: { format: :json } do
    devise_for :users, only: []
  end

  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :users, only: :create
      resources :sessions, only: :create
    end
  end
end
