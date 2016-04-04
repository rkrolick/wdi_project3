Rails.application.routes.draw do
  resources :patients
  root to: "patients#index"
end
