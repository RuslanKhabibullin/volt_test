Rails.application.routes.draw do
  scope defaults: { format: :json } do
    devise_for :users, only: []
  end

  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :users, only: :create
      resources :sessions, only: :create
      resources :posts, only: %i[create index show] do
        resources :comments, only: %i[create index]
      end
      post "reports/by_author" => "reports#by_author"
      resource :avatar, only: %i[create show]
    end
  end
end
