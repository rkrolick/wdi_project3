Rails.application.routes.draw do
  resources :patients do
    resources :visits
  end
  root to: redirect('/patients#/')
end
