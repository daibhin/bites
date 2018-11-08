Rails.application.routes.draw do
  resource :bite, only: [:update]
end
