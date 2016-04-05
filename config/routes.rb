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
  get '/api_test/:query', to: 'api_test#index', as: 'diagnosis'
end
