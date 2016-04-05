Rails.application.routes.draw do
  resources :patients do
    resources :visits do
      resources :vitals
      resources :cbcs
      resources :ptptt
      resources :bmp
    end
  end
  root to: redirect('/patients#/')
  get '/dx/:query', to: 'dx_api#index', as: 'diagnosis'
end
