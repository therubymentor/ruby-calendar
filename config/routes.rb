Rails.application.routes.draw do
  resource :calendar, only: %i[show]
  resources :events, only: %i[new create]
end
