Rails.application.routes.draw do
  root "conduit#index"

  resources :conduit
end
