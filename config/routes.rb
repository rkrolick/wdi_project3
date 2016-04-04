Rails.application.routes.draw do
  resources :patients, only: [:index]
  root to: redirect('/patients')
end
