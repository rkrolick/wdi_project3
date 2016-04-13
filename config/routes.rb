Rails.application.routes.draw do
  resources :patients do
    resources :visits do
      # NHO: In general, would recommend against nesting resources 3 levels deep ->
        # Probably an indicator to modify data structures to provide great flexibility
      resources :vitals # NHO: With all of these child resources, what routes can we limit so we're not exposing unnessary actions
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
