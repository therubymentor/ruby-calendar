Rails.application.routes.draw do
  resource :calendar, only: %i[show]
end
