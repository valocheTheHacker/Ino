Rails.application.routes.draw do
  root "page#index"

  resources :page, only: [:index, :new, :create]
end
