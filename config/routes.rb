Rails.application.routes.draw do
  resources :patients do
    resources :visits do
      resources :vitals
      resources :cbcs
      resources :ptptts
      resources :bmps
      resources :dxs
      resources :rxs
    end
  end
  root to: redirect('/patients#/')
  get '/dx/:query', to: 'dx_api#index', as: 'diagnosis'
end
