Rails.application.routes.draw do
  resources :patients
  root to: redirect('/patients')
end
