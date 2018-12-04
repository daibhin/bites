Rails.application.routes.draw do
  resources :bites, only: [:update]
end
