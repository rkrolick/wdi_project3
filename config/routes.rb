Rails.application.routes.draw do
  resources :patients, only: [:index] do
    resources :visits
  end
  root to: redirect('/patients')
end
