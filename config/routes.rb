Rails.application.routes.draw do
  resources :patients do
    resources :visits do
      resources :vitals
    end
  end
  root to: redirect('/patients#/')
end
